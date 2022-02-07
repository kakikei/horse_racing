require 'rails_helper'

RSpec.describe "horses/new", type: :view do
  before(:each) do
    assign(:horse, Horse.new())
  end

  it "renders new horse form" do
    render

    assert_select "form[action=?][method=?]", horses_path, "post" do
    end
  end
end
