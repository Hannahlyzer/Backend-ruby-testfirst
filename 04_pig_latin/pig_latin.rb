#write your code here

# the array 0 index should be moved to a negative index
# divide multiple words up into separate indices in an array, 
# pig latinize them, then recombine into a string

#if first letter is not a vowel, keep checking until it is
# EXCEPT combine "qu"
# everything before the vowel gets moved to the back
# add "ay" onto the end array[i] edited + "ay"

# Can I create a new string with the cut out beginning letters and push to end of array index?


#if array 0-3 include sch or qu or ch

def translate(string)
    array = string.split
    array2 = []

    array.each do |word|
      letter_u = word.index("u")
      
        if "aeiou".include?(word[0])
            array2 << word + "ay"
      
        elsif word.include?("qu") == true && word.index("qu") <= 3
        
            array2 << word[(letter_u + 1)..-1] + word[0..letter_u] + "ay"

        else
            vowel = word.index(/[aeiou]/)  
            array2 << word[vowel..-1] + word[0..(vowel - 1)] + "ay"
        end
    end
  
    array.each_with_index do |word, i|
        if word == word.capitalize
            array2[i] = array2[i].capitalize
        end
    end
  
  return array2.join(" ")
end