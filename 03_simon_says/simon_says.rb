#write your code here
def echo(string)
    return string
end

def shout(string)
    return string.upcase
end


# def repeat(string)
#     return "#{string} #{string}"
# end

def repeat(string, num = 2)
    repeating = Array.new(num, string).join(" ")
    return repeating
end

def start_of_word(string, num)
    return string[0..(num-1)]
end

def first_word(string)
    i = 0
    word = ""
    while string[i] != " " && i < string.length
        word += string[i]
        i += 1
    end
    return word
end


#split into an array on the spaces
#capitalize each index in array
#combine array indices into string
#return string


#There's got to be a better way to do this, but it works

def titleize(string)
    array = string.split
    array2 = []
    i = 0
    
    while i < array.length
        if i == 0
            array2 << array[i].capitalize
        elsif i > 0 && array[i] != "and" && array[i] != "as" && array[i] != "but" && array[i] != "for" && array[i] != "if" && array[i] != "nor" && array[i] != "or" && array[i] != "so" && array[i] != "yet" && array[i] != "a" && array[i] != "an" && array[i] != "the" && array[i] != "as" && array[i] != "at" && array[i] != "by" && array[i] != "for" && array[i] != "in" && array[i] != "of" && array[i] != "off" && array[i] != "on" && array[i] != "per" && array[i] != "to" && array[i] != "up" && array[i] != "via" && array[i] != "over"
            array2 << array[i].capitalize
        else
        array2 << array[i]
      end
      i += 1
    end
    result = array2.join(" ")
    return result
end



