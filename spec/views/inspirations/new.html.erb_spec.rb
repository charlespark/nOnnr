require 'rails_helper'

RSpec.describe "inspirations/new", :type => :view do
  before(:each) do
    assign(:inspiration, Inspiration.new(
      :Inspiration => "MyString"
    ))
  end

  it "renders new inspiration form" do
    render

    assert_select "form[action=?][method=?]", inspirations_path, "post" do

      assert_select "input#inspiration_Inspiration[name=?]", "inspiration[Inspiration]"
    end
  end
end
