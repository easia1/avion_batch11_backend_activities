# 1 ----------- Iterating over an array and printing out each value ---------- #
numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.each { |x| puts x }



# 2 ------ Get value of key :b in hash, add key:value pair {e:5} to hash ----- #
h = {a:1,b:2,c:3,d:4}

# Get value of key :b
puts h[:b]
# Add key:value pair to h
h[:e] = 5



# 3 ------------- Copy information from contact_data to contacts ------------- #
contact_data = [["john@email.com", "123 Main St.", "555-123-4567"],["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"John Cruz" => {}, "Avion School" => {}}

contacts["John Cruz"][:email] = contact_data[0][0]
contacts["John Cruz"][:address] = contact_data[0][1]
contacts["John Cruz"][:phone] = contact_data[0][2]

contacts["Avion School"][:email] = contact_data[1][0]
contacts["Avion School"][:address] = contact_data[1][1]
contacts["Avion School"][:phone] = contact_data[1][2]

puts contacts



# 4 - Ask for user's age then tell user their age in 10, 20, 30 an 40 years. - #
# Added name prompt
puts "Hi, what's your name?"
name = gets.chomp

puts "#{name}, how old are you?"
age = gets.chomp.to_i
year = 10

# Used loop instead of repeating same lines
while year <= 40 do
    puts("In #{year} years you will be: ", (age + year))
    year +=10
end


