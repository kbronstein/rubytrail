describe "Enumerable" do
  before do
    # Use an array as the test target because it includes the Enumerable module
    @numbers = [53, 42, 10, 19]
  end

  it "supports any?" do
    @numbers.any? {|n| n > 20}.should == true
  end

  it "supports find aka. detect" do
    @numbers.find {|n| n > 20}.should == 53
  end

  it "supports select aka. find_all" do
    @numbers.select {|n| n > 20}.should == [53, 42]
  end

  it "supports map" do
    @numbers.map {|n| n * 2 }.should == [106, 84, 20, 38]
  end

end
