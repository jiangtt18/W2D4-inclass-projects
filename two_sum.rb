def two_sum? (arr, target)
  targets = Hash.new(false)
  arr.each do |num|
    other = target - num
    return true if targets[other]
    targets[num] = true
  end

  false
end

def bad_two_sum?(arr, target)
  arr.each_with_index do |num1, idx1|
    arr.each_with_index do |num2, idx2|
      next if idx1 == idx2
      return true if num1 + num2 == target
    end
  end
  false
end

def okay_two_sum?(arr, target)
  sorted_arr = arr.sort
  midpoint = sorted_arr / 2
  return
  left = sorted_arr.take(midpoint)
  right = sorted_arr.drop()
end

def binary_search(arr, target)
  return nil if array.length <= 1
  sorted_arr = arr.sort
  midpoint = sorted_arr / 2

  mid_num = sorted_arr[midpoint]
  if target == mid_num
    return true
  elsif target < mid_num
    binary_search(arr.take(mid_point), target)
  else
    binary_search(arr.drop(midpoint), target)
  end
end

p bad_two_sum?([0, 1, 5, 7], 6)
p bad_two_sum?([0, 1, 5, 7], 10)
