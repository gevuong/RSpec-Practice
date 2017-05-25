class Temperature
  attr_accessor :options

  def initialize(options = {})
    @options = options
  end

  def in_fahrenheit
    @options[:f]
    p (@options[:c] * (9.0 / 5) + 32)
  end

  def in_celsius
    (@options[:f] - 32.0) * (5 / 9.0)
    #@options[:c]
  end

  # defaults = { f: 0, c: 0 }
  # options = defaults.merge(options)
end
