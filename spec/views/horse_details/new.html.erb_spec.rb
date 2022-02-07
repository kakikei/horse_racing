require 'rails_helper'

RSpec.describe "horse_details/new", type: :view do
  before(:each) do
    assign(:horse_detail, HorseDetail.new())
  end

  it "renders new horse_detail form" do
    render

    assert_select "form[action=?][method=?]", horse_details_path, "post" do
    end
  end
end
