module MyEnumerable
  def all?
    return true unless block_given?

    each { |value| return false unless yield value } if block_given?
    true
  end
end
