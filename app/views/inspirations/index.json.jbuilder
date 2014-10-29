json.array!(@inspirations) do |inspiration|
  json.extract! inspiration, :id, :Inspiration
  json.url inspiration_url(inspiration, format: :json)
end
