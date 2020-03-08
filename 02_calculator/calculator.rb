#write your code here
def add a, b
    a + b
end

def subtract a, b
    a - b
end

def sum arr
    total = 0
    arr.each do |element|
        total += element
    end
    total
end

def multiply *args
    total = 1
    args.each do |element|
        total *= element
    end
    total
end

def power a, b
    a**b
end

def factorial value
    if (value == 0)
        total = 0
    else
        total = 1
        counter = 1
        while (counter <= value)
        total *= counter
        counter += 1
        end
    end
    total
end