def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  result_array = []
  outer_count = 0
  while outer_count < src.length do
    inner_count = 0
    minimum = -1
    while inner_count < src[outer_count].length do
      if src[outer_count][inner_count] < minimum || minimum == -1
        minimum = src[outer_count][inner_count]
      end
      inner_count += 1
    end
    result_array.push(minimum)
    outer_count += 1
  end
  print result_array
end