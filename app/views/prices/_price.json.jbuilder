json.extract! price, :id, :component_id, :qty, :cost_each, :shipping_each, :created_at, :updated_at
json.url price_url(price, format: :json)
