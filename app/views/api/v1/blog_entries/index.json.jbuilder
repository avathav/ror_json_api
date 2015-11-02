json.array!(@api_v1_blog_entries) do |api_v1_blog_entry|
  json.extract! api_v1_blog_entry, :id, :blog_id, :title, :content, :is_visible
  json.url api_v1_blog_entry_url(api_v1_blog_entry, format: :json)
end
