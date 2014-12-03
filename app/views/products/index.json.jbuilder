json.array!(@products) do |product|
  json.extract! product, :id, :img, :title, :description, :price, :category_id, :company_id
  json.url product_url(product, format: :json)
end
