#Project 3, Substrings
def substrings (words, dictionary)
    word_count = Hash.new(0)
    words = words.gsub(/[^A-Za-z]/, " ").downcase.split(" ")
    words.each do |word|
        dictionary.each do |ref|
            if word.include? ref
                word_count[ref] += 1
            end
        end
    end
    return Hash[word_count.sort]
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
