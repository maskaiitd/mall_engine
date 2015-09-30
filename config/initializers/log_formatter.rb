class Logger::SimpleFormatter
  def call(severity, timestamp, progname, msg)
    "[#{timestamp}] [#{severity}] MSG #{msg}\n"
  end
end