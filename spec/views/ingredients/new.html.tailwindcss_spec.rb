require 'rails_helper'

RSpec.describe "ingredients/new", type: :view do
  before(:each) do
    assign(:ingredient, Ingredient.new(
      ingredient_name: "MyString",
      ingredient_weight: 1,
      ingredient_calorie_per_100g: 1,
      complex_dish_kitchen: nil
    ))
  end

  it "renders new ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredients_path, "post" do

      assert_select "input[name=?]", "ingredient[ingredient_name]"

      assert_select "input[name=?]", "ingredient[ingredient_weight]"

      assert_select "input[name=?]", "ingredient[ingredient_calorie_per_100g]"

      assert_select "input[name=?]", "ingredient[complex_dish_kitchen_id]"
    end
  end
end
