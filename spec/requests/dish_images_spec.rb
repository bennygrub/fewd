require 'rails_helper'

RSpec.describe "DishImages", type: :request do
  describe "GET /dish_images" do
    it "works! (now write some real specs)" do
      get dish_images_path
      expect(response).to have_http_status(200)
    end
  end
end
