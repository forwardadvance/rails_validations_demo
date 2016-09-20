json.extract! port, :id, :lat, :lng, :name, :weather, :description, :created_at, :updated_at
json.url port_url(port, format: :json)