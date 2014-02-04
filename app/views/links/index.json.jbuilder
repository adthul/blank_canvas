json.array!(@links) do |link|
  json.extract! link, :id, :title, :description, :url, :category
  json.url link_url(link, format: :json)
end
