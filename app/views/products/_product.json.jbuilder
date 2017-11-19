json.extract! product, :id, :name, :msrp, :created_at, :updated_at
json.url product_url(product, format: :json)
