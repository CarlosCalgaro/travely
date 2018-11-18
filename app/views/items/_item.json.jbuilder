json.extract! item, :id, :name, :quantity, :price, :date, :created_at, :updated_at
json.url item_url(item, format: :json)
