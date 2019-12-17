def bubble_sort unsorted_numbers

  size = unsorted_numbers.length
  size.times do
    for i in 0...size-1 do
      if unsorted_numbers[i+1] < unsorted_numbers[i]
        unsorted_numbers[i+1],unsorted_numbers[i] = unsorted_numbers[i],unsorted_numbers[i+1]
      end
    end
  end
  unsorted_numbers
end

def bubble_sort_by unsorted_numbers

  size = unsorted_numbers.length
  size.times do
    for i in 0...size-1 do
      if yield(unsorted_numbers[i],unsorted_numbers[i+1]) > 0
        unsorted_numbers[i+1],unsorted_numbers[i] = unsorted_numbers[i],unsorted_numbers[i+1]
      end
    end
  end
  unsorted_numbers
end

print bubble_sort([4,3,78,2,0,2])
print "\n"
print bubble_sort_by(["hi", "hello", "hey"]) { |left, right|
  left.length - right.length
}
print "\n"