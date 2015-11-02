require 'rails_helper'

RSpec.describe "api/v1s/index", type: :view do
  before(:each) do
    assign(:api_v1_blogs, [
      Api::V1::Blog.create!(
        :title => "Title",
        :decrtiption => "MyText",
        :is_visible => false
      ),
      Api::V1::Blog.create!(
        :title => "Title",
        :decrtiption => "MyText",
        :is_visible => false
      )
    ])
  end

  it "renders a list of api/v1s" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
