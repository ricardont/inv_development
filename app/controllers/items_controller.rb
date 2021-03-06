class ItemsController < ApplicationController
  include ActionView::Helpers::NumberHelper
  include ActionView::Helpers::NumberToLetters

  before_action :set_item, only: [:show, :edit, :update, :destroy, :create_maintenance, :create_file, :change_maintenance_done, :edit_order]
  helper_method :sort_column, :sort_direction, :get_percentage_value, :sort_column_orders
  # GET /items
  # GET /items.json
  def index
    @search_items = policy_scope(Item).ransack(params[:q])

    @items = @search_items.result.order(sort_column + " " + sort_direction).paginate(page: params[:page], per_page: 200)

    @all_models = policy_scope(TrailerType).pluck(:model_part)

    @all_remissions = policy_scope(Item).pluck(:remission)
  end

  def next_maintenances
    Item.set_without_maintenance
    @search_items = policy_scope(Item).next_maintenances.ransack(params[:q])
    @items = @search_items.result.order('maintenance_date').paginate(page: params[:page], per_page: 20)
    #@items_electric = Item.where(sub_category: SubCategory.where(category_id: 2).ids)
    @items_electric = policy_scope(Item).next_maintenances.where(sub_category: SubCategory.where(category_id: 2).ids)
  end


  def income_statement
    vendido = StatusItem.find_by_key('vendido').id
    facturado = StatusItem.find_by_key('facturado').id
    pendiente_factura = StatusItem.find_by_key('pendiente_factura').id

    @income_sales = Item.where(status_item_id: [vendido, facturado, pendiente_factura])


  end

  def orders
    if current_user.god? or current_user.admin?
      @search_items = Item.where(status_item_id: StatusItem.find_by_key('pendiente').id).includes(:user).includes(:client).includes(:user => :department).includes(:user => :branches).ransack(params[:q])
    elsif current_user.admin_branch?
      @search_items = Item.joins(:branch).where('branches.manager_id = ? AND items.status_item_id = ?', current_user.id, StatusItem.find_by_key('pendiente')).includes(:user).includes(:client).includes(:user => :department).includes(:user => :branches).ransack(params[:q])
    elsif current_user.user_employee?
      @search_items = Item.where(user_id: current_user.id, status_item_id: StatusItem.find_by_key('pendiente').id).includes(:user).includes(:client).includes(:user => :department).includes(:user => :branches).ransack(params[:q])
    end


    @items = @search_items.result.order(sort_column + " " + sort_direction).paginate(page: params[:page], per_page: 20)

    @all_models = policy_scope(TrailerType).pluck(:model_part)

    @all_remissions = policy_scope(Item).pluck(:remission)
  end

  def sales
    if current_user.god? or current_user.admin?
      @search_items = Item.where(status_item_id: [StatusItem.find_by_key('vendido').id, StatusItem.find_by_key('pendiente_factura').id, StatusItem.find_by_key('facturado').id]).includes(:branch).includes(:department).includes(:status_item).ransack(params[:q])
    elsif current_user.admin_branch?
      @search_items = Item.joins(:branch).where('branches.manager_id = ?', current_user.id).where(status_item_id: [StatusItem.find_by_key('vendido').id, StatusItem.find_by_key('pendiente_factura').id, StatusItem.find_by_key('facturado').id]).includes(:branch).includes(:department).includes(:status_item).ransack(params[:q])
    elsif current_user.user_employee?
      @search_items = Item.where(user_id: current_user.id, status_item_id: [StatusItem.find_by_key('vendido').id, StatusItem.find_by_key('pendiente_factura').id, StatusItem.find_by_key('facturado').id]).includes(:branch).includes(:department).includes(:status_item).ransack(params[:q])
    end

    @all_models = policy_scope(TrailerType).pluck(:model_part)

    @all_remissions = policy_scope(Item).pluck(:remission)

    @vendors = User.where(role_id: Role.find_by(key: 'empleado_sin_acceso'))

    @items = @search_items.result.order(sort_column + " " + sort_direction).paginate(page: params[:page], per_page: 20)
  end

  def orders_shipped
    if current_user.god? or current_user.admin?
      @search_items = Item.where(status_shipping_id: StatusShipping.find_by_key('enviado').id).includes(:user).includes(:client).includes(:branch).includes(:department).ransack(params[:q])
    elsif current_user.admin_branch?
      @search_items = Item.joins(:branch).where('branches.manager_id = ? AND items.status_shipping_id = ?', current_user.id, StatusShipping.find_by_key('enviado')).includes(:user).includes(:client).includes(:branch).includes(:department).ransack(params[:q])
    elsif current_user.user_employee?
      @search_items = Item.where(user_id: current_user.id, status_item_id: StatusShipping.find_by_key('enviado').id).includes(:user).includes(:client).includes(:branch).includes(:department).ransack(params[:q])
    end


    @items = @search_items.result.order(sort_column + " " + sort_direction).paginate(page: params[:page], per_page: 20)
    @all_models = policy_scope(Trailer).pluck(:model)

    @all_remissions = policy_scope(Item).pluck(:remission)

  end

  def new_report_sales

    titulo_reporte = 'Trailers Vendidos'
    nombre_reporte = 'trailers_vendidos'
    trailers = params[:trailers].tr('[]', '').split(',').map(&:to_i)

    @trailers_sold = Item.where(id: trailers)
    @today = DateTime.now

    total_sales = get_total_sales @trailers_sold

    @total = number_to_currency total_sales

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Trailers Vendidos" # Excluding ".pdf" extension.
      end
    end
  end

  def report_item_sale
    titulo_reporte = 'Trailers Vendidos'
    nombre_reporte = 'trailers_vendidos'

    @trailer = Item.find(params[:id])

    @tasa = @trailer.price * 0.16
    @sub_total = @trailer.price - @tasa


    @number_string = @trailer.price.a_letras

    @today = DateTime.now


    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Trailers Vendidos" # Excluding ".pdf" extension.
      end
    end
  end

  def get_total_sales sales
    total = 0
    sales.each do |sale|
      total += sale.price.nil? ? 0 : sale.price
    end

    return total.to_f
  end

  def edit_order

    @users = User.all
    @item_id = @item.try(:id)

  end

  def new_order
    @item = Item.new
    @users = User.all
    @trailers = Trailer.all

  end

  # GET /items/1
  # GET /items/1.json
  def show
    @status_item_vendidos = Array.new()
    @status_item_vendidos << StatusItem.find_by_key('vendido')
    @status_item_vendidos << StatusItem.find_by_key('pendiente_factura')
    audits = @item.audits + @item.associated_audits
    @audits = audits.sort_by { |a| a.created_at }

  end

  # GET /items/new
  def new
    @item = Item.new
    @users = Company.where(id: current_user.current_company)
    @branches = Branch.all #current_user.current_company.eql?(0) ? policy_scope(Branch).order(:name) : policy_scope(Branch).where(company_id: @current_company.try(:id)).order(:name)
    @categories = Category.all

  end

  # GET /items/1/edit
  def edit
    if current_user.current_company.eql? 0
      @users = Company.all
    else
      @users = Company.where(id: current_user.current_company)
    end
    # @branches = current_user.current_company.eql?(1) ? policy_scope(Branch).order(:name) : policy_scope(Branch).where(company_id: @current_company.try(:id)).order(:name)
    @branches = policy_scope(Branch).order(:name)
    @categories = Category.all
  end

  # POST /items
  # POST /items.json
  def create

    @users = Company.where(id: current_user.current_company)


    @branches = current_user.current_company.eql?(0) ? policy_scope(Branch).order(:name) : policy_scope(Branch).where(company_id: @current_company.try(:id)).order(:name)

    new_params = item_params
    # if item_params[:user_id].eql?('')
    #   new_params[:user_id] = params[:boss_id]
    # end

    @item = Item.new(new_params)


    # finantial_balance @item

    respond_to do |format|
      if @item.save

        format.html { redirect_to @item, notice: 'Se creo el art??culo correctamente.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    if current_user.current_company.eql? 0
      @users = Company.all
    else
      @users = Company.where(id: current_user.current_company)
    end

    @branches = current_user.current_company.eql?(0) ? policy_scope(Branch).order(:name) : policy_scope(Branch).where(company_id: @current_company.try(:id)).order(:name)


    new_params = item_params


    if item_params[:user_id].eql?('')

      if params[:boss_id].eql?("null")
        @role_admin = Role.where(key: "admin").last.id
        @boss = User.where(role_id: @role_admin).first
        new_params[:user_id] = @boss.id
      else
        new_params[:user_id] = params[:boss_id]
      end

    end

    item_selled = @item.status_item_id != params[:status_item_id]

    respond_to do |format|
      if @item.update(new_params)


        Item.fcm_push_notification('REMOLQUE VENDIDO', @item.try(:user).try(:full_name), User.first.try(:token))

        Department.find(@item.department_id).update(last_code: @item.code) if @item.department_id
        format.html { redirect_to @item, notice: 'Se actualizo el art??culo correctamente.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def send_email
    respond_to do |format|
      if ApplicationMailer.item_sold(params[:id]).deliver_now

        format.json { render json: true }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /items
  # POST /items.json
  def create_file

    # @item_file = ItemFile.new(item_file_params)
    @item_file = @item.item_files.create!(item_file_params)

    respond_to do |format|
      if @item_file.save
        format.html { redirect_to :back, notice: 'Se actualizo el art??culo correctamente.' }

        format.json { render :json => {"se_armo" => "el guiso"} }
      else
        render authenticated_root_path
      end
    end
  end

  # POST /items
  # POST /items.json
  def create_maintenance
    # @item_maintenance = ItemsMaintenance.new(item_maintenance_params)
    @item_maintenance = @item.items_maintenances.create!(item_maintenance_params)
    respond_to do |format|

      if @item_maintenance.save
        format.html { redirect_to :back, notice: 'Se actualizo el art??culo correctamente.' }
        format.json { render :json => {"se_armo" => "el guiso"} }
      else
        render authenticated_root_path
      end
    end
  end


  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    respond_to do |format|
      if @item.destroy
        format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
        format.json { render json: true }
      else
        format.json { render json: false }
      end
    end
  end


  def get_maintenances
    @item_maintenances = ItemsMaintenance.where(item_id: params[:id])
  end

  def get_files
    @item_files = ItemFile.where(item_id: params[:id])
  end

  def change_maintenance_done
    @item.update_attribute('maintenance_done', params[:value] == 'true')

    render json: @item.to_json, status: :ok
  end


  def items_excel
    @search_items = policy_scope(Item).ransack(params[:q])
    @items = @search_items.result

    respond_to do |format|
      format.xlsx { render xlsx: 'items_excel', filename: "items_excel.xlsx" }
    end
  end

  def reporter

    begin
      @search_save = params[:q]
      start_date = params[:start_date].to_date
      end_date = params[:end_date].to_date
      if start_date.nil? or end_date.nil?
        @search_items = policy_scope(Item).ransack(params[:q])
      else
        @search_items = policy_scope(Item).where(maintenance_date: start_date..end_date).ransack(params[:q])
      end
    rescue
      @search_items = policy_scope(Item).ransack(params[:q])
    end

    # @search_items = policy_scope(Item).where(maintenance_date: params[:start_date]..params[:end_date]).ransack(params[:q])
    @total_price_items = @search_items.result.sum(:price)


    #@search_items.sorts = 'branches.name'
    #@items = @search_items.result.paginate(page: params[:page], per_page: 50)
    if params[:column].eql? "Responsable"
      @items = @search_items.result.eager_load(:user).order('users.last_name asc').paginate(page: params[:page], per_page: 20) #if @search_items.sorts.empty?
    elsif params[:column].eql? "branch"
      @items = @search_items.result.eager_load(user: [:branch, {departments: :branch}]).order('branches.name asc, branches_departments.name asc').paginate(page: params[:page], per_page: 20)
    elsif params[:column].eql? "department"
      @items = @search_items.result.eager_load(user: [:department, :departments]).order("departments.name #{sort_direction}, departments_users #{sort_direction}").paginate(page: params[:page], per_page: 20)
    elsif params[:column].eql? "brand"
      @items = @search_items.result.eager_load(:brand).order("brands.name #{sort_direction}").paginate(page: params[:page], per_page: 20)
    elsif params[:column].eql?("category")
      @items = @search_items.result.eager_load(:category).order("categories.name #{sort_direction}").paginate(page: params[:page], per_page: 20)
    elsif params[:column].eql? "sub_category"
      @items = @search_items.result.eager_load(:sub_category).order("sub_categories.name #{sort_direction}").paginate(page: params[:page], per_page: 20)
    elsif params[:column].eql? "NumEmpleado"
      @items = @search_items.result.eager_load(:user).order("users.employee_number #{sort_direction}").paginate(page: params[:page], per_page: 20)
    else
      @items = @search_items.result.order("#{sort_column.downcase} #{sort_direction}").paginate(page: params[:page], per_page: 20)

      #@items = @search_items.result.eager_load(:user).order('users.last_name asc').paginate(page: params[:page], per_page: 20) #if @search_items.sorts.empty?
    end
    #   @branches = current_user.current_company.eql?(0) ? policy_scope(Branch).order(:name) : policy_scope(Branch).where(company_id: @current_company.try(:id)).order(:name);


    # Estaba anteriormente....
    # @items = @search_items.result.order(:code,:branch_id,:department_id).paginate(page: params[:page], per_page: 20)
    # @search_items.sorts = 'branches.name'
    # @items = @search_items.result.paginate(page: params[:page], per_page: 50)

    respond_to do |format|
      format.html
      format.js
    end
  end


  def items_imports
    #@items = Item.all
    @items = Item.none
  end


  def import
    Item.import(params[:file])
    redirect_to items_import_path, notice: 'Art??culos actualizados correctamente.'
  end

  def get_percentage_value(percentage, price)
    final_percentage = price * (percentage / 100)
    return final_percentage
  end


  private

  # def finantial_balance item
  #
  #
  #   if item.status_item.key == 'no_vendido'
  #
  #     entry = Plutus::Entry.new(
  #         :description => "Compra de Remolque",
  #         :date => item.acquisition_date,
  #         :debits => [
  #             {:account_name => "Compras", :amount => item.price},
  #             {:account_name => "IVA Acreditable", :amount => (item.price * 0.16)}],
  #         :credits => [
  #             {:account_name => "Bancos", :amount => (item.price * 1.16)}])
  #
  #     entry.save
  #
  #     entry = Plutus::Entry.new(
  #         :description => "Compra de Remolque ER",
  #         :date => item.acquisition_date,
  #         :debits => [
  #             {:account_name => "Inventarios", :amount => item.price}],
  #         :credits => [
  #             {:account_name => "Costo Ventas", :amount => item.price}])
  #
  #     entry.save
  #
  #
  #   elsif item.status_item.key == 'pendiente'
  #
  #     entry = Plutus::Entry.new(
  #         :description => "Pedido Pendiente Remolque",
  #         :date => item.acquisition_date,
  #         :debits => [
  #             {:account_name => "Inventarios", :amount => item.price}],
  #         :credits => [
  #             {:account_name => "Costo Ventas", :amount => item.price}])
  #
  #     entry.save
  #
  #   end
  #
  #
  # end

  def sortable_columns
    # ["branch", "Punto de Venta","Descripcion","Modelo","Numero de serie","Numero de serie","department", "category", "code", "model", "Responsable", "name", "description", "price", "brand", "sub_category", "serial_number"]
    ["branches.name", "serial_number", "model", "categories_description", 'departments.name','price', 'status_items.name',
     'purchased_date', 'sale_price', 'planet_percentage', 'branch_percentage', 'seller_percentage', 'trailer_types.name',
     'advance_payment', 'clients.name, clients.last_name', 'users.first_name, users.last_name']
  end
  def sortable_columns_orders
    ["users.branches.name", "user_departments.name"]
  end


  def sort_column

    if params[:sort] === 'Sucursal'
      sort = 'branches.name'
    elsif params[:sort] === 'Numero de serie'
      sort = 'serial_number'
    elsif params[:sort] === 'Modelo'
      sort = 'model'
    elsif params[:sort] === 'Descripcion'
      sort = 'categories_description'
    elsif params[:sort] === 'Punto de Venta'
      sort = 'departments.name'
    elsif params[:sort] === 'Valor de Adquisici??n'
      sort = 'price'
    elsif params[:sort] === 'Estatus del Art??culo'
      sort = 'status_items.name'
    elsif params[:sort] === 'Fecha de venta'
      sort = 'purchased_date'
    elsif params[:sort] === 'Precio de venta'
      sort = 'sale_price'
    elsif params[:sort] === '% Planet'
      sort = 'planet_percentage'
    elsif params[:sort] === '% Sucursal'
      sort = 'branch_percentage'
    elsif params[:sort] === '% Vendedor'
      sort = 'seller_percentage'
    elsif params[:sort] === 'Nombre del trailer'
      sort = 'trailer_types.name'
    elsif params[:sort] === 'Abono'
      sort = 'advance_payment'
    elsif params[:sort] === 'Cliente'
      sort = 'clients.name, clients.last_name'
    elsif params[:sort] === 'Vendedor'
      sort = 'users.first_name, users.last_name'
    else
      sort = params[:sort]
    end
    sortable_columns.include?(sort) ? sort : "serial_number"
  end

  def sort_column_orders
    if params[:sort] === 'Sucursal'
      sort = 'user.branches.name'
    elsif params[:sort] === 'Punto de Venta'
      sort = 'user_departments.name'
    else
      sort = params[:sort]
    end
    sortable_columns_orders.include?(sort) ? sort : "serial_number"
    

  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def item_params
    params.require(:item).permit(:name, :code, :description, :image, :model, :serial_number, :purchased_date,
                                 :in_service_date, :time_unit_service, :time_quantity_service, :price, :category_id,
                                 :time_unit_depreciation, :time_quantity_depreciation, :sub_category_id, :provider_id,
                                 :department_id, :user_id, :brand_id, :status_item_id, :status_shipping_id, :maintenance_date,
                                 :maintenance_done, :branch_id, :accessory, :remission, :color,
                                 :trailer_id, :client_id, :advance_payment, :acquisition_date,
                                 :fiscal_voucher_id, :payment_type, :sale_price, :trailer_length_id, :trailer_height_id,
                                 :ramp_type_id, :redila_type_id, :trailer_type_id, :floor_type_id, :capacity_id,
                                 :brake_type_id, :color_id, :divition_type_id, :fender_type_id, :hydraulic_jack_id,
                                 :pull_type_id, :reinforcement_type_id, :roof_type_id, :suspension_type_id, :turn_type_id,
                                 :trailer_width_id, :categories_description, :seller_percentage, :planet_percentage,
                                 :branch_percentage
    )
  end


  # Never trust parameters from the scary internet, only allow the white list through.
  def item_file_params
    params.require(:item_file).permit(:item_id, :file, :file_type, :description)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def item_maintenance_params
    params.require(:item_maintenance).permit(:item_id, :file, :maintenance_id, :description, :price, :provider)
  end
end
