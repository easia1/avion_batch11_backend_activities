# ------ Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum ------ #
square_sum = 0
sum = 0

for num in 1..100
    square_sum += (num**2)
    sum += num
end

puts (sum**2) - square_sum
