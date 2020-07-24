def bubble_sort(array)
  i = 0
  iterations = 0
  last_array = array.dup
  no_swap = false
  while no_swap == false
    while i < array.length - 1
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
      i += 1
    end
    if array == last_array
      no_swap = true
    else
      i = 0
      iterations += 1
      last_array = array.dup
    end
  end
  print array
  puts ", Iterations: #{iterations}"
end

bubble_sort([5, 4, 3, 2, 1])
# => [1, 2, 3, 4, 5], Iterations: 4
bubble_sort([5, 1, 2, 3, 4])
# => [1, 2, 3, 4, 5], Iterations: 1
bubble_sort([4, 3, 78, 2, 0, 2])
# => [0, 2, 2, 3, 4, 78], Iterations: 4