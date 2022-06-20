def bubble_sort(input_array)
  return input_array if input_array.length <= 1

  until input_array == input_array.sort
    input_array.each_with_index do |current_value, idx|
      break if input_array[idx + 1].nil?
      if current_value > input_array[idx + 1]
        input_array[idx] = input_array[idx + 1]
        input_array[idx + 1] = current_value
      end
    end
  end
  input_array
end

# solution using a boolean variable as a condition
def bubble_sort(input_array)
  return input_array if input_array.length <= 1
  swapped = true

  while swapped
    swapped = false
    # .times loop starts at 0, so iterator block variable current_position serves as an index of the current element in the array
    (input_array.length - 1).times do |current_position|
      if input_array[current_position] > input_array[current_position + 1]
        input_array[current_position], input_array[current_position + 1] = input_array[current_position + 1], input_array[current_position]
        swapped = true
      end
    end
  end
  input_array
end

p bubble_sort([6, 5, 3, 1, 8, 7, 2, 4])
p bubble_sort([4, 3, 5, 6, 7])
