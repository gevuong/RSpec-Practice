require "byebug"

class Dictionary

  def initialize
    @d = {} # dictionary instance variable
  end

  def entries # getter method
    @d
  end

  def add(animal)
    @d[animal.keys.first] = animal.values.first if animal.class == Hash
    @d[animal] = nil if animal.class == String

  end

  def keywords
    @d.keys.sort
  end

  def include?(keyword)
    @d.include?(keyword)
  end

  def find(str)
    return {} if @d.empty?
    #return {} unless @d.include?(str)
    #return @d if @d.include?(str)
    arr = []
    @d.to_a.each do |sub_arr|
      if sub_arr.first.include?(str)
        arr << sub_arr
      else
        next
      end
    end

    arr.to_h
  end

  def printable
    str = ""
    last_key = @d.keys.sort.last
    @d = @d.sort_by { |key, _| key } # no longer a hash
    p @d
    @d.each do |key, val|
      str << "[#{key}]" + " "
      str << "\"#{val}\""
      str << "\n" unless key == last_key
    end

    str
  end

end
