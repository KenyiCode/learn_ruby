#write your code here
def echo str
    str
end

def shout str
    str.upcase
end

def repeat str, numberOfRepeats = 0
    if (numberOfRepeats > 0)
        ((str + " ") * numberOfRepeats).strip
    else
    str + " " + str
    end
end

def start_of_word str, index
    str[0...index]
end

def first_word str
    arr = str.split(' ')
    arr[0]
end

def titleize str
    if (str.include?(" "))
        arr = str.capitalize.split(' ')
        str = ""
        arr.each do |word|
            if word == "and" || word == "over" || word == "the"
                str += word
                str += " "
            else
                str += word.capitalize
                str += " "
            end
        end
        str.strip
    else
        str.capitalize
    end
end