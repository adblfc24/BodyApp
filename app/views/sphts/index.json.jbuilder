json.array!(@sphts) do |spht|
  json.extract! spht, :id, :title, :description, :file
  json.url spht_url(spht, format: :json)
end
