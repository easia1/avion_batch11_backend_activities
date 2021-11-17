def encode(text)
    puts text.gsub(/[aeiou]/, 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5)
end

def decode(text)
    puts text.gsub(/[12345]/, '1' => 'a', '2' => 'e', '3' => 'i', '4' => 'o', '5' => 'u')
end

encode('hello hi yo yo ano na')
decode('h2ll4 h3 y4 y4 1n4 n1')