json.extract! reservation, :id, :initial_date, :final_date, :obs, :user_id, :item_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
