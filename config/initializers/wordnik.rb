Wordnik.configure do |config|
  config.api_key = 'a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5'               # required
  config.username = 'bozo'                    # optional, but needed for user-related functions
  config.password = 'cl0wnt0wn'               # optional, but needed for user-related functions
  config.response_format = 'json'             # defaults to json, but xml is also supported
  config.logger = Logger.new('/dev/null')     # defaults to Rails.logger or Logger.new(STDOUT). Set to Logger.new('/dev/null') to disable logging.
end