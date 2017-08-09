def bubble_sort array
  bubble_sort_by(array){|left, right| left - right}
end

def bubble_sort_by array, &block
  puts array.join(' ')
  swapped = nil
  until swapped == false do
    swapped = false
    (array.length - 1).times do |i|
      if yield(array[i], array[i+1]) > 0
        swap(array, i, i + 1)
        swapped = true
      end
    end
  end
  puts array.join(' ')
end

def swap array, i, j
  array[i], array[j] = array[j], array[i]
end

bubble_sort_by(["hi", "hey", "hello", "yo", "ahem"]) do |left,right| 
  left.length - right.length 
  end

bubble_sort([3,2,5,6,8,1,9,8,8,8,8,4,6,54,6,25,14,6,74,251,6,654,48,85,61,651,32,584,84,321,64,654,321,654,684,6341,31,1])