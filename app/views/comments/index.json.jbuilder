json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :comment, :bible_study_id
  json.url comment_url(comment, format: :json)
end
