json.array!(@boats) do |boat|
  json.extract! boat, :name, :user
  json.url boat_url(boat, format: :json)
end
