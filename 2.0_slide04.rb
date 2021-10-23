class Student
    attr_accessor :name, :age, :city

    def initialize(name,age,city)
        @name = name
        @age = age
        @city = city
    end

    def school
        puts "Yo #{@name}, let's go to school together!"
    end

    def home
        puts "#{@name}, let's go back to #{@city}!"
    end

    def about
        puts "#{@name} is #{@age} years old, and is from #{@city}."
    end
end

juan = Student.new("Juan", 22, "Makati")

juan.school
juan.home
juan.about
puts juan.name
puts juan.age
puts juan.city



