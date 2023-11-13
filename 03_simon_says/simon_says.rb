#write your code here
def echo(string)
  string
end

def shout(string)
  string.upcase
end

# def repeat(string)
#     return "#{string} #{string}"
# end

def repeat(string, num = 2)
  Array.new(num, string).join(" ")
end

def start_of_word(string, num)
  string[0..(num-1)]
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
  translated_word = []
  i = 0
  little_words=["a", "an", "over", "the", "and", "in", "of"]

  while i < array.length
    if i == 0
      translated_word << array[i].capitalize
    elsif little_words.include?(array[i])
      translated_word << array[i]
    else
      translated_word << array[i].capitalize
    end
    i += 1
    end
    result = translated_word.join(" ")
    return result
end

