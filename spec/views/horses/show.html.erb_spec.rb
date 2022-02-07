require 'rails_helper'

RSpec.describe "horses/show", type: :view do
  before(:each) do
    @horse = assign(:horse, Horse.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
