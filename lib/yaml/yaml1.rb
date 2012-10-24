#
# Source: http://confreaks.com/videos/1117-gogaruco2012-code-to-joy
#
require 'yaml/store'

repo  = YAML::Store.new('/tmp/blog.yml')
Post = Struct.new(:title, :body)

repo.transaction do
  posts = repo[:posts] = []

  posts << Post.new("Hello World", "This is my first post")
  posts << Post.new("Hiatus",      "This blog is on vacation")
end
