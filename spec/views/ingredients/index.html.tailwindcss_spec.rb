require 'rails_helper'

RSpec.describe "ingredients/index", type: :view do
  before(:each) do
    assign(:ingredients, [
      Ingredient.create!(
        ingredient_name: "Ingredient Name",
        ingredient_weight: 2,
        ingredient_calorie_per_100g: 3,
        complex_dish_kitchen: nil
      ),
      Ingredient.create!(
        ingredient_name: "Ingredient Name",
        ingredient_weight: 2,
        ingredient_calorie_per_100g: 3,
        complex_dish_kitchen: nil
      )
    ])
  end

  it "renders a list of ingredients" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Ingredient Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
