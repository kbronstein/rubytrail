module MyEnumerable

  def select
    return this.dup unless block_given?
    result = []
    each do |item|
      result << yield(item)
    end
    result
  end

end
