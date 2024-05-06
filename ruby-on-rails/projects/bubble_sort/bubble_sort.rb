def bubble_sort(array)
  n = array.length
  (n - 1).times do |i|
    (n - i - 1).times do |j|
      array[j], array[j + 1] = array[j + 1], array[j] if array[j] > array[j + 1]
    end
  end
  array
end
