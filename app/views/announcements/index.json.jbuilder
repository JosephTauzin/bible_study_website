json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :title, :description, :time, :location
  json.url announcement_url(announcement, format: :json)
end
