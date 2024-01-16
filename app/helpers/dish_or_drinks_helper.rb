module DishOrDrinksHelper
  def dish_or_drink_type(dish_or_drinks)
    dish_or_drink_variants = {
      coffee_espresso: 'Coffee espresso',
      white_vine: 'White vine',
      red_vine: 'Red vine',
      coffee_with_milk: 'Coffee with milk',
      microwaved_salmon: 'Microwaved salmon',
      stewed_chicken: 'Stewed chicken',
      boiled_eggs: 'Boiled eggs',
      boiled_cauliflower: 'Boiled cauliflower',
      braised_cabbage: 'Braised cabbage',
      bell_pepper_salad: 'Bell pepper salad',
      pear: 'Pear',
      apple: 'Apple',
      orange: 'Orange',
      pomegranate: 'Pomegranate',
      blueberry: 'Blueberry',
      yogurt: 'Yogurt',
      milk: 'Milk',
      cheese: 'Cheese',

    }
    # if dish_or_drink.present? && dish_or_drink.name.present?
    if dish_or_drinks.present?
      # dish_or_drink_variants[dish_or_drinks_id.to_sym]
      dish_or_drink_variants[dish_or_drinks]
    else
      ' '
    end
  end
end
