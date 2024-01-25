require 'rails_helper'

RSpec.describe "complex_dish_kitchens/new", type: :view do
  before(:each) do
    assign(:complex_dish_kitchen, ComplexDishKitchen.new(
      complex_dish_name: "MyString",
      complex_dish_ingredients: "MyText",
      ingredient_weight_in_gram: 1
    ))
  end

  it "renders new complex_dish_kitchen form" do
    render

    assert_select "form[action=?][method=?]", complex_dish_kitchens_path, "post" do

      assert_select "input[name=?]", "complex_dish_kitchen[complex_dish_name]"

      assert_select "textarea[name=?]", "complex_dish_kitchen[complex_dish_ingredients]"

      assert_select "input[name=?]", "complex_dish_kitchen[ingredient_weight_in_gram]"
    end
  end
end
