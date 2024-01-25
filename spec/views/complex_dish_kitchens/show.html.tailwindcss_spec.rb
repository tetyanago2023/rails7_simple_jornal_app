require 'rails_helper'

RSpec.describe "complex_dish_kitchens/show", type: :view do
  before(:each) do
    assign(:complex_dish_kitchen, ComplexDishKitchen.create!(
      complex_dish_name: "Complex Dish Name",
      complex_dish_ingredients: "MyText",
      ingredient_weight_in_gram: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Complex Dish Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
