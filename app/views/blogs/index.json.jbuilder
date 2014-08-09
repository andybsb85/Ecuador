json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :article, :image_url
  json.url blog_url(blog, format: :json)
end
