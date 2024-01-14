require 'rails_helper'

RSpec.describe "dish_or_drinks/edit", type: :view do
  let(:dish_or_drink) {
    DishOrDrink.create!(
      name: "MyString",
      ingredients: "MyText"
    )
  }

  before(:each) do
    assign(:dish_or_drink, dish_or_drink)
  end

  it "renders the edit dish_or_drink form" do
    render

    assert_select "form[action=?][method=?]", dish_or_drink_path(dish_or_drink), "post" do

      assert_select "input[name=?]", "dish_or_drink[name]"

      assert_select "textarea[name=?]", "dish_or_drink[ingredients]"
    end
  end
end
