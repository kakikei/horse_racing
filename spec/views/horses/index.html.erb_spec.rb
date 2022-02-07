require 'rails_helper'

RSpec.describe "horses/index", type: :view do
  before(:each) do
    assign(:horses, [
      Horse.create!(),
      Horse.create!()
    ])
  end

  it "renders a list of horses" do
    render
  end
end
