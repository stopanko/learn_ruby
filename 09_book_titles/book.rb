class Book
  SPECIAL_WORDS = %w[the a an and in of]
  def title=(title)
    @title = title
  end

  def title
    @title.split.each_with_index.map{|w, index| SPECIAL_WORDS.include?(w) && index != 0 ? w : w.capitalize}.join(" ")
  end
end