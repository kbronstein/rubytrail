

Given /^the program is not running$/ do

end

When /^I start the program$/ do
  @messenger = StringIO.new
  @hello = HelloWorld.new(@messenger)
  @hello.start
end

Then /^it should say "(.*?)"$/ do |message|
  @messenger.string.split.should include(message)
end
