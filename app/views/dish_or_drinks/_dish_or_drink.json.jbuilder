json.extract! dish_or_drink, :id, :name, :ingredients, :created_at, :updated_at
json.url dish_or_drink_url(dish_or_drink, format: :json)
