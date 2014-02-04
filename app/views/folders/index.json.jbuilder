json.array!(@folders) do |folder|
  json.extract! folder, :id, :folder_name, :user_id, :link_id
  json.url folder_url(folder, format: :json)
end
