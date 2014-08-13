# Example of singleton
# The Singleton pattern ensures that a class has only one instance and ensures access to
# the instance through the application.

require 'logger'

class Logger
  include Singleton

  def initialize
    @log = File.open("log.txt", "a")
  end

  def log(msg)
    @log.puts(msg)
  end

end

Logger.instance.log('message 2')