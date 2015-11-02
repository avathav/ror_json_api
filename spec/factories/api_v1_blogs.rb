FactoryGirl.define do
  factory :api_v1_blog, :class => 'Api::V1::Blog' do
    title "MyString"
decrtiption "MyText"
is_visible false
  end

end
