# ------------------- Check if a number is a perfect square ------------------ #
puts "Give me a number"
number = gets.chomp.to_i

n = 0 
isSquare = false
while n <= number 
    product = n * n
    if product == number
        isSquare = true
        break
    else
        n += 1
    end
end

puts isSquare

