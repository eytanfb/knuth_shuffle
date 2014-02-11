number_of_times = ARGV[0].to_i
array = []
number_of_times.times do |n|
  array << n-(number_of_times/2)
end
print array.join(' ')
puts ""
for i in 0...array.length
  random = rand(number_of_times-i)+i 
  array[i], array[random] = array[random], array[i]
end

print array.join(' ')
puts ""
