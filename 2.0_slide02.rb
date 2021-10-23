# ----------------------- Find smallest number in array ---------------------- #
def findSmallest(array)
    num = array[0]
    array.each { |x|
        if x < num
            num = x
        end
    }
    puts "The smallest number in #{array} is #{num}."
end

findSmallest([34,15,88,2])
findSmallest([34,-345,-1,100])