require "spec_helper"
require "my_array"


describe MyArray do
  
  it { should respond_to :each, :member?, :find_all, :collect }
  
  it "should implement each" do
    array = MyArray.new([1,2,3,4,5])
    result = []
    array.each {|item| result << item*2}
    
    result.should == [2,4,6,8,10]
    array.class.should == MyArray
  end

  
  it "should implement select" do
    array = MyArray.new [0,1,2,3,4,5]
    result = array.select do |i| i%2 == 0 end

    result.should == [0,2,4]
  end
end
