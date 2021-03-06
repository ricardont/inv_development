class ItemSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :code, :model, :serial_number, :purchased_date, :acquisition_date,
             :price, :department_id, :user_id, :status_item_id, :branch_id, :branch, :department, :status_item,
             :accessory, :status_shipping, :remission, :payment_type, :fiscal_voucher, :client, :user,
             :trailer_length, :trailer_height, :ramp_type, :redila_type, :floor_type, :capacity,
             :trailer_width, :brake_type, :color, :divition_type, :fender_type, :hydraulic_jack, :advance_payment,
             :pull_type, :reinforcement_type, :roof_type, :suspension_type, :turn_type, :trailer_type, :brand, :categories_description,
             :seller_percentage, :planet_percentage, :branch_percentage

  def user
    object.user.as_json(except: [:avatar, :received_file], include: :department) if object.user

  end

  def trailer_type
    object.trailer_type.as_json(except: :image) if object.trailer_type
  end

  def image
    rails_blob_path(object.image, only_path: true) if object.image.attached?
  end

end
