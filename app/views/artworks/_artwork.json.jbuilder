json.extract! artwork, :id, :artist_id, :title, :image, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
