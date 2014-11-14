json.array!(@articles) do |article|
  json.extract! article, :id, :title, :content, :url, :category_id, :company_id
  json.url article_url(article, format: :json)
end
