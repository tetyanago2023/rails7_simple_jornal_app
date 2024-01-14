require "rails_helper"

RSpec.describe DishOrDrinksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/dish_or_drinks").to route_to("dish_or_drinks#index")
    end

    it "routes to #new" do
      expect(get: "/dish_or_drinks/new").to route_to("dish_or_drinks#new")
    end

    it "routes to #show" do
      expect(get: "/dish_or_drinks/1").to route_to("dish_or_drinks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/dish_or_drinks/1/edit").to route_to("dish_or_drinks#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/dish_or_drinks").to route_to("dish_or_drinks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/dish_or_drinks/1").to route_to("dish_or_drinks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/dish_or_drinks/1").to route_to("dish_or_drinks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/dish_or_drinks/1").to route_to("dish_or_drinks#destroy", id: "1")
    end
  end
end
