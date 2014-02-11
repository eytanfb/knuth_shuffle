def print_array(array)
  print array.join(' ')
  puts ""
end

number_of_times = ARGV[0].to_i
array = []
number_of_times.times do |n|
  array << n-(number_of_times/2)
end
print_array array
for i in 0...array.length
  random = rand(i..number_of_times) 
  array[i], array[random] = array[random], array[i]
  print_array array
end

print_array array