module Swimmable
    def swim
        "I'm swimming!"
    end
end

module Talkative
    def speak
        "Hello!"
    end
end

class Animal
    def initialize(name, kind)
        @name = name
        @kind = kind
    end

    def type
        puts "Hi, I'm #{@name} and I'm a #{@kind}"
    end
end

class GoodDog < Animal
    include Talkative
    def speak
        super + " from GoodDog class"
    end
end

class Fish < Animal
    include Swimmable
end

sparky = GoodDog.new("Sparky", "dog")
puts sparky.speak
sparky.type

dory = Fish.new("Dory", "fish")
puts "Dory says, \"#{dory.swim}\""
dory.type