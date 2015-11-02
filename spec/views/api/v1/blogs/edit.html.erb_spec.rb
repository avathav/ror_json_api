require 'rails_helper'

RSpec.describe "api/v1s/edit", type: :view do
  before(:each) do
    @api_v1 = assign(:api_v1, Api::V1::Blog.create!(
      :title => "MyString",
      :decrtiption => "MyText",
      :is_visible => false
    ))
  end

  it "renders the edit api_v1 form" do
    render

    assert_select "form[action=?][method=?]", api_v1_path(@api_v1), "post" do

      assert_select "input#api_v1_title[name=?]", "api_v1[title]"

      assert_select "textarea#api_v1_decrtiption[name=?]", "api_v1[decrtiption]"

      assert_select "input#api_v1_is_visible[name=?]", "api_v1[is_visible]"
    end
  end
end
