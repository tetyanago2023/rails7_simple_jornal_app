require 'rails_helper'

RSpec.describe "dish_or_drinks/new", type: :view do
  before(:each) do
    assign(:dish_or_drink, DishOrDrink.new(
      name: "MyString",
      ingredients: "MyText"
    ))
  end

  it "renders new dish_or_drink form" do
    render

    assert_select "form[action=?][method=?]", dish_or_drinks_path, "post" do

      assert_select "input[name=?]", "dish_or_drink[name]"

      assert_select "textarea[name=?]", "dish_or_drink[ingredients]"
    end
  end
end
