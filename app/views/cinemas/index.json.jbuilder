json.array!(@cinemas) do |cinema|
  json.extract! cinema, :id, :name, :city, :address, :zip_code
  json.url cinema_url(cinema, format: :json)
end
