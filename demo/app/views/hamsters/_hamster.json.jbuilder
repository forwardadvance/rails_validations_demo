json.extract! hamster, :id, :lat, :lng, :name, :weather, :description, :created_at, :updated_at
json.url hamster_url(hamster, format: :json)