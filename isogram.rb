
def is_isogram(word)
    @word = word.downcase
    isIsogram = true
    i = 0
    while i < @word.length do
        j = i + 1
        while j < @word.length do
            if @word[j] == @word[i]
                isIsogram = false
                break
            end
            j += 1
        end
        i += 1
    end
    puts isIsogram
end

is_isogram("Dermatoglyphics")
is_isogram("aba")
is_isogram("moOse")
is_isogram("eman")
is_isogram("annyeonghaseyo")