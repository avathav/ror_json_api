require 'rails_helper'

RSpec.describe "api/v1s/new", type: :view do
  before(:each) do
    assign(:api_v1, Api::V1::Blog.new(
      :title => "MyString",
      :decrtiption => "MyText",
      :is_visible => false
    ))
  end

  it "renders new api_v1 form" do
    render

    assert_select "form[action=?][method=?]", api_v1_blogs_path, "post" do

      assert_select "input#api_v1_title[name=?]", "api_v1[title]"

      assert_select "textarea#api_v1_decrtiption[name=?]", "api_v1[decrtiption]"

      assert_select "input#api_v1_is_visible[name=?]", "api_v1[is_visible]"
    end
  end
end
