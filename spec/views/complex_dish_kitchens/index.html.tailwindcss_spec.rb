require 'rails_helper'

RSpec.describe "complex_dish_kitchens/index", type: :view do
  before(:each) do
    assign(:complex_dish_kitchens, [
      ComplexDishKitchen.create!(
        complex_dish_name: "Complex Dish Name",
        complex_dish_ingredients: "MyText",
        ingredient_weight_in_gram: 2
      ),
      ComplexDishKitchen.create!(
        complex_dish_name: "Complex Dish Name",
        complex_dish_ingredients: "MyText",
        ingredient_weight_in_gram: 2
      )
    ])
  end

  it "renders a list of complex_dish_kitchens" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Complex Dish Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
