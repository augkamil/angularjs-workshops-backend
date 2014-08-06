json.array! movies do |movie|
  json.extract! movie, :id, :title, :director, :description, :release_date, :time, :created_at, :updated_at, :image_url
  json.rate movie.average_rate
  json.comments movie.comments do |comment|
    json.extract! comment, :id, :body
    json.user_name comment.user.name
  end
end