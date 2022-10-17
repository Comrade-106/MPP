require "Singleton.rb"

class Test
  include Logger

  s = Logger.instance

  s.LogMessage("Hello, World!")
end