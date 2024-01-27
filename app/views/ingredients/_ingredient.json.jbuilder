json.extract! ingredient, :id, :ingredient_name, :ingredient_weight, :ingredient_calorie_per_100g, :complex_dish_kitchen_id, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
