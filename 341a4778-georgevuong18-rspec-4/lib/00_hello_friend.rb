class Friend
  def greeting(who = nil)
    return "Hello, #{who}!" unless who == nil
    "Hello!"
  end
end
