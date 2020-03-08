#write your code here
def translate word
   arr = word.split(" ")
   newWord = "" 
   newArr = []
   arr.each do |element|
    newWord = element
        if (element[0] == "a" or
            element[0] == "e" or
            element[0] == "i" or
            element[0] == "o" or
            element[0] == "u" or
            element[0] == "y" )
            newWord += "ay"
            newArr.push(newWord)

        elsif (element[0..1] == "qu")
            newWord = element + element[0..1]
            newWord += "ay"
            newArr.push(newWord[2...])

        elsif (element[1..2] == "qu")
            newWord = element + element[0..2]
            newWord += "ay"
            newArr.push(newWord[3...])
            
        elsif (!(element[0..2].include? "a" or
            element[0..2].include? "e" or
            element[0..2].include? "i" or
            element[0..2].include? "o" or
            element[0..2].include? "u" or
            element[0..2].include? "y" ))
            newWord = element + element[0..2]
            newWord += "ay"
            newWord = newWord[3...]
            newArr.push(newWord)
        
        elsif (!(element[0..1].include? "a" or
            element[0..1].include? "e" or
            element[0..1].include? "i" or
            element[0..1].include? "o" or
            element[0..1].include? "u" or
            element[0..1].include? "y" ))
            newWord = element + element[0..1]
            newWord += "ay"
            newWord = newWord[2...]
            newArr.push(newWord)
        else
            newWord = element + element[0]
            newWord += "ay"
            newWord = newWord[1...]
            newArr.push(newWord)   
        end
    end 
    newWord = newArr.join(' ')
    newWord
end

puts translate gets.chomp