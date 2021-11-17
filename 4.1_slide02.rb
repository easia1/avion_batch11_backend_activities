# # With ceil
# def whatCentury(year)
#     puts (year.to_f/100).ceil
# end

# No ceil
def whatCentury(year)
    if year.to_f/100 % 1 != 0
        puts (year/100) + 1
    else
        puts year/100
    end
end


whatCentury(1705)
whatCentury(1900)
whatCentury(1601)
whatCentury(2000)

