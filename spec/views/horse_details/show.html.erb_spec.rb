require 'rails_helper'

RSpec.describe "horse_details/show", type: :view do
  before(:each) do
    @horse_detail = assign(:horse_detail, HorseDetail.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
