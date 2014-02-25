json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :cover, :duration, :summary, :staff_notation
  json.url movie_url(movie, format: :json)
end
