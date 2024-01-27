require 'rails_helper'

RSpec.describe "ingredients/show", type: :view do
  before(:each) do
    assign(:ingredient, Ingredient.create!(
      ingredient_name: "Ingredient Name",
      ingredient_weight: 2,
      ingredient_calorie_per_100g: 3,
      complex_dish_kitchen: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ingredient Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
