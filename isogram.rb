
def is_isogram(word)
    isIsogram = true
    i = 0
    while i < word.length do
        j = i + 1
        while j < word.length do
            if word[j].downcase == word[i].downcase
                isIsogram = false
                break
            end
            j += 1
        end
        i += 1
    end
    puts isIsogram
end

is_isogram("Dermatoglyphics") #true
is_isogram("aba") #false
is_isogram("moOse") #false
is_isogram("eman") #true
is_isogram("annyeonghaseyo") #false