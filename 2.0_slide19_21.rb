# ------------ Encapsulation (slide 19) and Abstraction (slide 21) ----------- #

class Student
    def initialize(name, studno, major, units, discount=false)
        @name = name
        @studno = studno
        @major = major
        @units = units
        @discount = discount
    end

    def show_info()
        puts "Student Name: #{@name}"
        puts "Student Number: #{@studno}"
        puts "Major: #{@major}"
    end

    def shift_to(newmajor)
        puts "#{@name} shifted from #{@major} to #{newmajor}"
        @major = newmajor
    end

    def total_tuition
        puts (total_amount * tuition_discount).round
    end

    def total_amount
        @units * 1500
    end

    def tuition_discount
        @discount ? 0.7 : 1
    end

    def introduce
        puts "Hi! I'm #{@name}, and I'm currently studying #{@major}."
    end
end

class Undergrad < Student
    def introduce
        puts "Hi! I'm #{@name}, and I'm taking up a bachelor's degree in #{@major}."
    end
end

class Master < Student
    def introduce
        puts "Hello! I'm #{@name}, and I'm taking up a master's degree in #{@major}."
    end
end


eman = Undergrad.new("Edric Emmanuel Sia", 201407076, "Economics", 17, true)
juan = Master.new("Juan de la Cruz", 201412345, "Philippine Studies", 9)


eman.show_info()
juan.show_info()

eman.shift_to("Landscape Architecture")
eman.total_tuition()
juan.total_tuition()

eman.introduce()
juan.introduce()



# ----------------------------------------------------- #

# class Document
#     def print
#     raise NotImplementedError, 'You must implement the print method'
#     end
# end

# class XmlDocument < Document
#     def print
#     p 'Print from XmlDocument'
#     end
# end

# class HtmlDocument < Document
#     def print
#     p 'Print from HtmlDocument'
#     end
# end

# XmlDocument.new.print # Print from XmlDocument
# HtmlDocument.new.print # Print from HtmlDocument

# what will happen if HtmlDocument has def prints instead of def print and we call print? 


# ----------------------------------------------------- #

class Duck
    def sound
        "Quack"
    end
end

class Dog
    def sound
        "Bark"
    end
end

class Cat
    def sound
        "Meow"
    end
end

class Animal
    def make_sound(animal)
        puts animal.sound
    end
end

animal = Animal.new

animal.make_sound(Duck.new)
animal.make_sound(Dog.new)
animal.make_sound(Cat.new)

# What does the fox say?
animal.make_sound(Fox.new) # uninitialized constant Fox (NameError)