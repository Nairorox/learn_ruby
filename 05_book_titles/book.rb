class Book
  attr_accessor :title

  def title
    returning_title = ""
    first_word_index = 0
        split_title = @title.split(" ")
        split_title.each do |title_part|
          if (title_part == "and"  or title_part == "in" or title_part =="the" or title_part == "of" or title_part == "a" or title_part == "an") and first_word_index != 0
            returning_title += title_part + " "
          else
      returning_title += title_part.capitalize + " "
    end
    first_word_index += 1
  end
    returning_title[-1, 1] = ""
    return returning_title
  end
end
