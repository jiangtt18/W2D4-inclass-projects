require "byebug"

def my_min(list)
  min = list[0]
  list.each_with_index do |num,i|
    list.each_with_index do |num2,j|
      next if  i == j
      min = num2 if num2 < min
    end
  end
  min
end

def my_min2(list)
  min = list[0]
  list.each do |num|
    min = [num, min].min
  end
  min
end


def largest_contiguous_subsum(list)
  subarr = []

  list.each_with_index do |num,i|
    sum = num
    subarr << sum
    list.each_with_index do |num2,j|
      next if j <= i
      sum += num2
      subarr << sum
    end

  end
  subarr.sort.last
end

def largest_contiguous_subsum2(list)
  largest = arr.first
  prev_sum = arr.first

  return arr.max if arr.all? { |num| num < 0 }

  (1...arr.length).each do |i|
    prev_sum = 0 if prev_sum < 0
    prev_sum += arr[i]
    largest = prev_sum if prev_sum > largest
  end
  largest

end
