json.extract! artwork, :id, :title, :image, :year, :category, :materials, :width, :height, :frame, :description, :price, :user_id, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
