def bubble_sort(array)
  i = 0
  j = 0
  while j < array.length - 1
    while i < array.length - 1
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
      i += 1
    end
    i = 0
    j += 1
  end
  p array
end

bubble_sort([5, 4, 3, 2, 1])
# => [1, 2, 3, 4, 5]
bubble_sort([4, 3, 78, 2, 0, 2])
# => [0, 2, 2, 3, 4, 78]