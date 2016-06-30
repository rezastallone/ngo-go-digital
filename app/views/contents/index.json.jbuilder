json.array!(@contents) do |content|
  json.extract! content, :id, :file_path, :note
  json.url content_url(content, format: :json)
end
