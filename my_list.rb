class MyList
  attr_accessor :list

  def initialize(*list)
    @list = list
  end

  def each
    i = 0
    until i > @list.length
      yield @list[i]
      i += 1
    end
  end
end
