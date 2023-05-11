json.extract! article, :id, :title, :writer, :body, :publishedat, :tags, :slug, :updatedat, :updatedtext, :created_at, :updated_at
json.url article_url(article, format: :json)
