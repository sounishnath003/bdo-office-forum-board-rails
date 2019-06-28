json.extract! gallery, :id, :photo, :created_at, :updated_at
json.url gallery_url(gallery, format: :json)
