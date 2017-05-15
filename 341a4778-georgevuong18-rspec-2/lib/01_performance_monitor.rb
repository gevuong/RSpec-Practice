def measure(repeat = 1)
  start_time = Time.now
  repeat.times { yield }
  end_time = Time.now
  p (end_time - start_time) / repeat
end
