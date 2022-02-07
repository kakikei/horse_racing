require 'rails_helper'

RSpec.describe "horse_details/edit", type: :view do
  before(:each) do
    @horse_detail = assign(:horse_detail, HorseDetail.create!())
  end

  it "renders the edit horse_detail form" do
    render

    assert_select "form[action=?][method=?]", horse_detail_path(@horse_detail), "post" do
    end
  end
end
