class Temperature
  attr_reader :options

  def initialize(options = {})
    @options = options
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
    Temperature.new(options)

    #@options[:f] = temp_c
    #temp_c = Temperature.new #(options = {})
    #p @options #p @temp
  end

  def self.from_fahrenheit(temp_f)
    options = { f: temp_f }
    Temperature.new(options)
  end
end

class Fahrenheit < Temperature
  def initialize(temp_f = {})
    @options = { f: temp_f }
  end
end

class Celsius < Temperature
  def initialize(temp_c)
    @options = { c: temp_c }
  end
end
