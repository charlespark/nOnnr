require 'rails_helper'

RSpec.describe "inspirations/show", :type => :view do
  before(:each) do
    @inspiration = assign(:inspiration, Inspiration.create!(
      :Inspiration => "Inspiration"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Inspiration/)
  end
end
