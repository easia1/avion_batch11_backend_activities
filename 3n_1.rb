# input i and j 
# => while loop within i and j 
# => call threeNOne 
# => add cycle to array 
# => print max value in array

def maxCycle(i,j)
    @total_cycles = []
    @i = i 
    @j = j

    for n in i..j
        @cycle = 0
        threeNOne(n)
        @total_cycles << @cycle
    end
    
    max_num = @total_cycles[0]

    @total_cycles.each do |x|
        
        if x > max_num
            max_num = x
        end
    end

    puts "#{i} #{j} #{max_num}" 
end

def threeNOne(n)
    if 0 > n || n > 1000000
    elsif n == 1
        @cycle += 1
    elsif (n % 2) == 0
        threeNOne(n/2)
        @cycle += 1
    else
        threeNOne((3*n)+1)
        @cycle += 1
    end
end


maxCycle(1,10)
maxCycle(100,200)
maxCycle(201,210)
maxCycle(900,1000)