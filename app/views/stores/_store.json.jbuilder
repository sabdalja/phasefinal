json.extract! store, :id, :name, :street, :city, :state, :zip, :phone, :latitude, :longtitude, :active, :created_at, :updated_at
json.url store_url(store, format: :json)
