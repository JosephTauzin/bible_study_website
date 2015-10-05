json.array!(@bible_studies) do |bible_study|
  json.extract! bible_study, :id, :date, :lesson, :takeaways
  json.url bible_study_url(bible_study, format: :json)
end
