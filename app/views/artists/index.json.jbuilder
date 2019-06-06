json.array! @artists do |artist|
  json.id artist.id
  json.first_name artist.first_name
  json.last_name artist.last_name
  json.name artist.to_s
  json.path artist_path(artist)
end
