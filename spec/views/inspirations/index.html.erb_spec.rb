require 'rails_helper'

RSpec.describe "inspirations/index", :type => :view do
  before(:each) do
    assign(:inspirations, [
      Inspiration.create!(
        :Inspiration => "Inspiration"
      ),
      Inspiration.create!(
        :Inspiration => "Inspiration"
      )
    ])
  end

  it "renders a list of inspirations" do
    render
    assert_select "tr>td", :text => "Inspiration".to_s, :count => 2
  end
end
