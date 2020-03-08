class Book
# write your code here
    attr_accessor :title

    def title
        capTitle = []
        splitTitle = @title.split(" ")
        splitTitle[0] = splitTitle[0].capitalize
        splitTitle.each do |word|
            if (!(word == "and" or
                word == "in" or
                word == "the" or
                word == "of" or 
                word == "a" or 
                word == "an"))
                capTitle.push(word.capitalize)
            else
                capTitle.push(word)
            end
        end
        @title = capTitle.join(" ")
    end
end