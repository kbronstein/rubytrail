module MyEnumerable

  def include?(obj)
    each do |item|
      return true   if item == obj
    end
  end
  alias_method :member?, :include? unless method_defined?(:member?)


  def select
    return self.dup unless block_given?
    result = []
    each do |item|
      result << item  if yield item
    end
    result
  end
  alias_method :find_all, :select unless method_defined?(:find_all)


  def reject
    return self.dup unless block_given?
    result = []
    each do |item|
      result << item unless yield item
    end
    result
  end


  def map
    return self.dup unless block_given?
    result = []
    each do |item|
      result << yield(item)
    end
    result
  end
  alias_method :collect, :map unless method_defined?(:collect)
end

