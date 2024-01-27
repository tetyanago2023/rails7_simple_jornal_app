require 'rails_helper'

RSpec.describe "ingredients/edit", type: :view do
  let(:ingredient) {
    Ingredient.create!(
      ingredient_name: "MyString",
      ingredient_weight: 1,
      ingredient_calorie_per_100g: 1,
      complex_dish_kitchen: nil
    )
  }

  before(:each) do
    assign(:ingredient, ingredient)
  end

  it "renders the edit ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredient_path(ingredient), "post" do

      assert_select "input[name=?]", "ingredient[ingredient_name]"

      assert_select "input[name=?]", "ingredient[ingredient_weight]"

      assert_select "input[name=?]", "ingredient[ingredient_calorie_per_100g]"

      assert_select "input[name=?]", "ingredient[complex_dish_kitchen_id]"
    end
  end
end
