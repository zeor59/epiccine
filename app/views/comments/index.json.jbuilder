json.array!(@comments) do |comment|
  json.extract! comment, :id, :id_user, :id_movie, :comment, :date, :notation
  json.url comment_url(comment, format: :json)
end
