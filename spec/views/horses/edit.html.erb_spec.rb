require 'rails_helper'

RSpec.describe "horses/edit", type: :view do
  before(:each) do
    @horse = assign(:horse, Horse.create!())
  end

  it "renders the edit horse form" do
    render

    assert_select "form[action=?][method=?]", horse_path(@horse), "post" do
    end
  end
end
