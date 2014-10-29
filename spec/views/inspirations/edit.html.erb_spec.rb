require 'rails_helper'

RSpec.describe "inspirations/edit", :type => :view do
  before(:each) do
    @inspiration = assign(:inspiration, Inspiration.create!(
      :Inspiration => "MyString"
    ))
  end

  it "renders the edit inspiration form" do
    render

    assert_select "form[action=?][method=?]", inspiration_path(@inspiration), "post" do

      assert_select "input#inspiration_Inspiration[name=?]", "inspiration[Inspiration]"
    end
  end
end
