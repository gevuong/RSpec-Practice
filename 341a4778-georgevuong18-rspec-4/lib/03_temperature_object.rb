class Temperature
  attr_accessor :options

  def initialize(options = {})
    default = { f: 32, c: 0 }
    @options = { :f => 0, :c => 0 }
    
  end

  def in_fahrenheit
    if @options.has_key?(:f)
      @options[:f]
    elsif @options.has_key?(:c)
      @options[:c] * (9.0 / 5) + 32
    end
  end

  def in_celsius
    if @options.has_key?(:c)
      @options[:c]
    elsif @options.has_key?(:f)
      (@options[:f] - 32.0) * (5 / 9.0)
    end
  end

  # define 'from_celsius' factory method as a class method
  def self.from_celsius(temp_c)
    options = { c: temp_c }

    temp = Temperature.new(options)
    temp.in_celsius

    #@options[:f] = temp_c
    #temp_c = Temperature.new #(options = {})
    #p @options #p @temp
  end

  def self.from_fahrenheit(temp_f)
    #@options[:f] = temp_f
    #p @options
  end

  # def []=(pos)
  #   p @options[pos]
  # end

end
