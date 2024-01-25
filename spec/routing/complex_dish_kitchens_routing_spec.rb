require "rails_helper"

RSpec.describe ComplexDishKitchensController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/complex_dish_kitchens").to route_to("complex_dish_kitchens#index")
    end

    it "routes to #new" do
      expect(get: "/complex_dish_kitchens/new").to route_to("complex_dish_kitchens#new")
    end

    it "routes to #show" do
      expect(get: "/complex_dish_kitchens/1").to route_to("complex_dish_kitchens#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/complex_dish_kitchens/1/edit").to route_to("complex_dish_kitchens#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/complex_dish_kitchens").to route_to("complex_dish_kitchens#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/complex_dish_kitchens/1").to route_to("complex_dish_kitchens#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/complex_dish_kitchens/1").to route_to("complex_dish_kitchens#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/complex_dish_kitchens/1").to route_to("complex_dish_kitchens#destroy", id: "1")
    end
  end
end
