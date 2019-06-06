json.extract! artist, :id, :first_name, :last_name
json.name artist.to_s
json.path artist_path(artist)
