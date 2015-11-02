json.array!(@api_v1_blogs) do |api_v1_blog|
  json.extract! api_v1_blog, :id, :title, :decrtiption, :is_visible
  json.url api_v1_blog_url(api_v1_blog, format: :json)
end
