require 'csv'

artists = CSV.read 'db/csv/artist_data.csv', headers: true
artists.each do |artist|
  id = artist[0]
  name = artist[1]
  first_name = name.split(', ').last
  last_name = name.split(', ').first
  puts "Creating #{name}"
  a = Artist.where(id: id).first_or_create
  a.first_name = first_name
  a.last_name = last_name
  a.save
end

artworks = CSV.read 'db/csv/artwork_data.csv', headers: true
artworks.each do |artwork|
  id = artwork[0]
  artist_id = artwork[4]
  title = artwork[5]
  image = artwork[18]
  puts "Creating #{title}"
  a = Artwork.where(id: id).first_or_create
  a.title = title
  a.image = image
  a.artist_id = artist_id
  a.save
end
