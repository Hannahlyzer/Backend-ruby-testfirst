class Book
# write your code here
  # attr_writer :title

  # def initialize
  #   @title = title
  # end

  def title
    titleize
  end

  def title=(title)
    @title = title
  end

  def titleize
      array = @title.split
      array2 = []
      i = 0
      little_words=["a", "an", "over", "the", "and", "in", "of"]
        
      while i < array.length
        if i == 0
          array2 << array[i].capitalize
        elsif little_words.include?(array[i])
          array2 << array[i]
        else
          array2 << array[i].capitalize
        end
        i += 1
      end
    result = array2.join(" ")
    return result
  end
end