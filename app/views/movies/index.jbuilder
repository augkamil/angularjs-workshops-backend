json.array! movies do |movie|
  json.extract! movie, :id, :title, :director, :description, :release_date, :time, :created_at, :updated_at, :image_url
  json.rate movie.average_rate
end