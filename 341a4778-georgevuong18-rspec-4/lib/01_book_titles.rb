class Book
  attr_reader :title # getter method

  def initialize
    @exceptions = %w[and in the of a an]
  end

  # def title=(title)
  #   @title = title
  # end
  
  def title=(title) # setter (writer) method
    @title = title.split.map.with_index do |word, idx|
      if @exceptions.include?(word) && idx != 0
        word
      else
        word.capitalize
      end
    end
                  .join(" ") # or @title = @title.join
  end
end

=begin #notes on how to modify @title with attr_accessor
  attr_accessor :title

  def title
    @title = title.capitalize
    self.title = title.capitalize
  end
=end
