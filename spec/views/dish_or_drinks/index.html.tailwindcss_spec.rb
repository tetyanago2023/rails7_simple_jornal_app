require 'rails_helper'

RSpec.describe "dish_or_drinks/index", type: :view do
  before(:each) do
    assign(:dish_or_drinks, [
      DishOrDrink.create!(
        name: "Name",
        ingredients: "MyText"
      ),
      DishOrDrink.create!(
        name: "Name",
        ingredients: "MyText"
      )
    ])
  end

  it "renders a list of dish_or_drinks" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
