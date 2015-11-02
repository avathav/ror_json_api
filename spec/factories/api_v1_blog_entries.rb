FactoryGirl.define do
  factory :api_v1_blog_entry, :class => 'Api::V1::BlogEntry' do
    blog nil
title "MyString"
content "MyText"
is_visible false
  end

end
