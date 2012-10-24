#
# Source: http://confreaks.com/videos/1117-gogaruco2012-code-to-joy
#
require 'yaml/store'

repo  = YAML::Store.new('/tmp/blog.yml')

Post     = Struct.new(:title, :body, :category)
Category = Struct.new(:name)
food     = Category.new(:food)

repo.transaction do
  posts = repo[:posts] = []

  posts << Post.new("Cookie!!", "C is for cookie", food)
  posts << Post.new("Durian",   "Stinky!",         food)
end
