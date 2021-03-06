json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :address, :city, :email, :password
  json.url customer_url(customer, format: :json)
end
