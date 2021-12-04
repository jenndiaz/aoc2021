# problem 1
def solution(array)
  prevNumber = 0
  sum = []
  array.each do |number|
    if (prevNumber < number.to_i) && (number != array[0])
      sum << 1 
    end
  prevNumber = number.to_i 
  end
  puts sum.length
end

# array = File.readlines('problem-1-input.txt')
array = [199, 200, 208, 210, 200, 200, 207, 240, 269, 260, 263]

# solution(array)

def solution2(array)
  depths_arrays = []
  sums_array = []
  prevNumber = 0
  increases = []

  depths_arrays = array.each_cons(3).to_a
  depths_arrays.each do |segment|
    sums_array << segment.sum
  end

  sums_array.each do |number|
    if (prevNumber < number) && (number != array[0])
      increases << 1 
    end

  prevNumber = number
  end
  puts increases.length - 1

end
# array = [199, 200, 208, 210, 200, 200, 207, 240, 269, 260, 263]
array = File.readlines('problem-1-input.txt').map(&:to_i)
solution2(array)

