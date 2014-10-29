json.array!(@notes) do |note|
  json.extract! note, :id, :word, :content, :published_on
  json.url note_url(note, format: :json)
end
