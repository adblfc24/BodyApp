json.array!(@scphotos) do |scphoto|
  json.extract! scphoto, :id, :title, :description, :file
  json.url scphoto_url(scphoto, format: :json)
end
