random_arr = Array.new(5) { rand(-1000000...1000000) }
# random_arr.sort!
puts "Your Array= #{random_arr}"
puts "*"*5

def smallest_absent_int(example)
  min = 1;
  new_arr = []
  solution_arr = []
  example.map{ |e| new_arr << e if e >= min }
  new_arr.sort!

  new_arr.each_with_index do |e, i|
    if new_arr[i] >= 1 && new_arr[i] == min
      min +=1;
      solution_arr << min
    else
      solution_arr << min
    end
  end

  final_solution = solution_arr[-1]
  puts "Lowest positive integer: #{final_solution}"

end

smallest_absent_int(random_arr)
