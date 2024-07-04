# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# require "open-uri"
# require "json"

# url = 'https://tmdb.lewagon.com/movie/top_rated'
# movies_encoded = URI.open(url).read
# movies = JSON.parse(movies_encoded)

# movies['results'].each do |movie|
#   new_movie = Movie.new
#   new_movie.title = movie["title"]
#   new_movie.overview = movie["overview"]
#   new_movie.rating = movie['vote_average']
#   new_movie.poster_url = "https://image.tmdb.org/t/p/original#{movie['poster_path']}"
#   new_movie.save!
# end


# ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#   List.find_or_create_by!(name: genre_name)
# end
  x = 2
  5.times  do
    bookmark = Bookmark.new(comment: "Nice moovie again", list_id: 1)
    bookmark.movie_id = (x)
    bookmark.save!
    x += 1
    puts "one added"
  end

puts "finished"
