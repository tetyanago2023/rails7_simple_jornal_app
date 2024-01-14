require 'rails_helper'

RSpec.describe "dish_or_drinks/show", type: :view do
  before(:each) do
    assign(:dish_or_drink, DishOrDrink.create!(
      name: "Name",
      ingredients: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
