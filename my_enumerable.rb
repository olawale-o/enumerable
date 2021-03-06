module MyEnumerable
  def all?
    return true unless block_given?

    each { |value| return false unless yield value } if block_given?
    true
  end

  def any?
    return true unless block_given?

    each { |value| return true if yield value } if block_given?
    false
  end

  def filter
    items = []
    return items unless block_given?

    each { |value| items << value if yield value } if block_given?
    items
  end
end
