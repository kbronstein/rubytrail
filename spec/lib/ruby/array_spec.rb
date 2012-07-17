describe "Array" do
  before do
    @numbers = (1..10).to_a
  end


  it "supports select" do
    evens = @numbers.select {|n| n.even?}

    evens.should == [2, 4, 6, 8, 10]
  end

  it "supports reject" do
    odds = @numbers.reject {|n| n.even?}

    odds.should == [1, 3, 5, 7, 9]
  end

  it "supports partition" do
    evens, odds = @numbers.partition {|n| n.even?}

    odds.should  == [1, 3, 5, 7, 9]
    evens.should == [2, 4, 6, 8, 10]
  end

  context"inject" do
    it "accumulates" do
      @numbers.inject {|sum, n| sum += n}.should == 55
      @numbers.inject(:+).should                 == 55
    end


    context "given an empty array" do
      before do
        @numbers = []
      end

      it "whith no argument, returns nil" do
        @numbers.inject {|sum, n| sum += n}.should be_nil
        @numbers.inject(:+).should be_nil
      end

      it "with an argument, returns this argument" do
        initial_value = 0
        total = @numbers.inject(initial_value) {|sum, n| sum += n}

        total.should == initial_value
      end
    end
  end

  it "supports sort" do
    [5, 3, 1, 2, 4].sort.should == [1, 2, 3, 4, 5]
  end

  it "supports sort_by" do
    words = ["World!", "Ruby", "Hello"].sort_by {|word| word.length}

    words.should == ["Ruby", "Hello", "World!"]
  end
end
