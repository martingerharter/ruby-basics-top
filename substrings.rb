# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) 
# as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string 
# and how many times it was found.
p "We match strings you input with our dictionary and how often we found those strings"

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dictionary)
    result = Hash.new(0)
    input = input.downcase.split

    input.each do |i|
        dictionary.each do |dict|
            if dict == input[input.index(i)]
                result[dict] += 1
            end
        end
    end
    p result
end

substrings("Howdy how are ya it it", dictionary)



