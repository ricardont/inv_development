json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :model, :serial_number, :purchased_date, :in_service_date, :time_unit_service, :time_quantity_service, :price, :time_unit_depreciation, :time_quantity_depreciation, :sub_category_id, :provider_id, :department_id, :user_id, :brand_id, :status_item_id
  json.url item_url(item, format: :json)
end
