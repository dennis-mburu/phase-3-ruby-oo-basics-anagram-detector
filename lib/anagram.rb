# Your code goes here!

class Anagram
    def initialize(word)
        @to_check = word.downcase
        @result =[]
    end

    def match(arr)
        arr.each do |word|
            sorted_word_array = word.downcase.chars.sort
            # puts sorted_word_array
            if @to_check.chars.sort == sorted_word_array
                @result << word
            end
        end
        @result
    end 
end


listen = Anagram.new('listen')
matches = listen.match(%w[enlists google inlets banana])
puts matches
pp (["dog", "cat"])