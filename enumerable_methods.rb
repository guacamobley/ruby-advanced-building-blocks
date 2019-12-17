module Enumerable
  def my_each
    for i in 0...self.length
      yield(self[i])
    end
  end


  def my_each_with_index
    for i in 0...self.length
      yield(self[i],i)
    end
  end

  def my_select
    output = []
    self.my_each do |item|
      if yield(item)
        output << item
      end
    end
    output
  end

  def my_all?
    self.my_each do |item|
      if !yield(item)
        return false
      end
    end
    return true
  end

  def my_any?
    self.my_each do |item|
      if yield(item)
        return true
      end
    end
    return false
  end

  def my_none?
    self.my_each do |item|
      if yield(item)
        return false
      end
    end
    return true
  end

  def my_count
    count = 0
    self.my_each do |item|
      if yield(item)
        count += 1
      end
    end
    return count
  end

  def my_map (*proc)
    output = []
    if !proc == []
      self.my_each do |item|
        output << proc.call
      end
    else
      self.my_each do |item|
        output << yield(item)
      end
    end
    output
  end

  def my_inject(*initial)
    if initial.nil?
      total = initial
      start_at = 0
    else
      total = self[0]
      start_at = 1
    end

    self[start_at..-1].my_each do |item|
      total = yield(total,item)
    end
    total
  end

end

