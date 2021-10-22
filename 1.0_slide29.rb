# 1 --------------------- Checks if array includes number -------------------- #
arr = [1,3,5,7,9,11]
number = 3

puts "#1 Does the array #{arr} include the number #{number}?" , arr.include?(number)



# 2 ------- Checks if number is between 0 and 50 or between 51 and 100 ------- #
puts "#2 Give me a number between 0 and 100"

while number = gets.chomp.to_i
    if number >= 0 && number <= 100
        if number >= 0 && number <= 50
            puts "#{number} is between 0 and 50"
            break
        else 
            puts "#{number} is between 51 and 100"
        end
    break
    else
        puts "Try again. Please give a number between 0 and 100"
    end
end



# 3 --------------------------- Get input from user -------------------------- #
puts "#3 Type anything to start. Type 'STOP' (all caps) to stop."

while input = gets.chomp
    if input == "STOP"
        puts "Ending program..."
        break
    elsif input == ''
        puts "You didn't type anything. Try Again."
    else
        puts "You said: #{input}. Type again."
    end
end



# 4 ------------- Check which numbers in array are divisible by 2 ------------ #
puts "#4 Check which numbers in an array are divisible by 2"
arr2 = [6, 3, 1, 8, 4, 2, 10, 65, 102]
arr_even = []

arr2.each { |x| 
    if x % 2 == 0
        arr_even << x
    end
} 

puts "Original array: #{arr2}"
puts "The numbers divisible by 2 are: #{arr_even}"
