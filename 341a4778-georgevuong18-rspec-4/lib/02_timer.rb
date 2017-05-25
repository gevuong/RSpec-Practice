class Timer
  attr_reader :seconds # getter method

  def seconds=(seconds) # setter method
    @timer = seconds
  end

  def seconds
    @timer = 0
  end

  def time_string
    if @timer < 10
      "00:00:0" + "#{@timer}"
    elsif @timer < 60
      "00:00:" + "#{@timer}"
    elsif @timer >= 60 && @timer < 3600
      sec = (@timer % 60).to_s
      sec = "0" + sec if sec.length == 1

      minutes = (@timer / 60).to_s
      minutes = "0" + minutes if minutes.length == 1

      "00:" + minutes + ":" + sec
    elsif @timer >= 3600
      hours = (@timer / 3600).to_s
      hours = "0" + hours if hours.length == 1

      minutes = ((@timer / 60) % 60).to_s
      minutes = "0" + minutes if minutes.length == 1

      sec = (@timer % 60).to_s
      sec = "0" + sec if sec.length == 1

      hours + ":" + minutes + ":" + sec
    end
  end
end
