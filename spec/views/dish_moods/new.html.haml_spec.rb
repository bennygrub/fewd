require 'rails_helper'

RSpec.describe "dish_moods/new", type: :view do
  before(:each) do
    assign(:dish_mood, DishMood.new(
      :dish_id => 1,
      :mood_id => 1
    ))
  end

  it "renders new dish_mood form" do
    render

    assert_select "form[action=?][method=?]", dish_moods_path, "post" do

      assert_select "input#dish_mood_dish_id[name=?]", "dish_mood[dish_id]"

      assert_select "input#dish_mood_mood_id[name=?]", "dish_mood[mood_id]"
    end
  end
end
