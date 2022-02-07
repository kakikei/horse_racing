require 'rails_helper'

RSpec.describe "horse_details/index", type: :view do
  before(:each) do
    assign(:horse_details, [
      HorseDetail.create!(),
      HorseDetail.create!()
    ])
  end

  it "renders a list of horse_details" do
    render
  end
end
