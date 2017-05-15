def reverser
  arr = []
  yield.split.each do |word|
    arr << word.reverse
  end

  arr.join(" ")
end

def adder(n = 1)
  yield + n
end

def repeater(n = 0)
  yield
  (n - 1).times { yield }
end
