# ---- Object that implements polymorphism by inheritance and duck-typing ---- #
# I also used inheritance in the previous file (2.0_slide_19_21_25.rb)
# I tried to use both in the same example here

class Plant
    def initialize(genus=nil, species=nil)
        @genus = genus
        @species = species
    end

    def family(type)
        type.family
    end

    def info
        puts "I'm a generic plant."
    end
end

class Araceae < Plant

    def family
        puts "Plant family: Araceae"
    end

    def info
        puts "I'm a plant from the Araceae family."
        puts @genus && @species ? "My scientific name is /#{@genus} #{@species}/." : ''
    end

end

class Asparagaceae < Plant
    def family
        puts "Plant family: Asparagaceae"
    end

    def info
        puts "I'm a plant from the Araceae family."
        puts @genus && @species ? "My scientific name is /#{@genus} #{@species}/." : ''
    end
end

# Duck-typing
new_plant = Plant.new
araceae = Araceae.new
new_plant.family(araceae)

asparagaceae = Asparagaceae.new
new_plant.family(asparagaceae)


# Inheritance
tiPlant = Asparagaceae.new("Cordyline", "fruticosa")
tiPlant.info
tiPlant.family

taro = Araceae.new("Colocasia", "esculenta")
taro.info
taro.family





# ------------------------------- Slide example ------------------------------ #
# class Payment
#     def type(payment)
#         payment.type
#     end
# end

# class FullyPaid
#     def type
#         puts "Full paid payment"
#     end
# end

# class Installment
#     def type
#         puts "Installment payment"
#     end
# end

# customer_payment = Payment.new
# full = FullyPaid.new
# customer_payment.type(full)

# installment = Installment.new
# customer_payment.type(installment)
