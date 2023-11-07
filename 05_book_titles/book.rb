class Book
# write your code here
    # attr_writer :title

    # def initialize
    #     @title = title
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
end


# class Name
# 	attr_reader :title, :first_name, :middle_name, :last_name

# def initialize(title, first_name, middle_name, last_name)
# 		@title = title
# 		@first_name = first_name
# 		@middle_name = middle_name
# 		@last_name = last_name
# end
# end

# -If we use attr_writer, we don't have to do this:
#     def title=(new_title)
#         @title = new_title
#     end
    
#     -Instead:
#     attr_writer :title

# attr_accessor -Can use to replace attr_reader and attr_writer together

# From capitalize problem
# def titleize(string)
#     array = string.split
#     array2 = []
#     i = 0
    
#     while i < array.length
#         if i == 0
#             array2 << array[i].capitalize
#         elsif i > 0 && array[i] != "and" && array[i] != "as" && array[i] != "but" && array[i] != "for" && array[i] != "if" && array[i] != "nor" && array[i] != "or" && array[i] != "so" && array[i] != "yet" && array[i] != "a" && array[i] != "an" && array[i] != "the" && array[i] != "as" && array[i] != "at" && array[i] != "by" && array[i] != "for" && array[i] != "in" && array[i] != "of" && array[i] != "off" && array[i] != "on" && array[i] != "per" && array[i] != "to" && array[i] != "up" && array[i] != "via" && array[i] != "over"
#             array2 << array[i].capitalize
#         else
#         array2 << array[i]
#       end
#       i += 1
#     end
#     result = array2.join(" ")
#     return result
# end