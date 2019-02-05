require 'rspec'
require_relative '../lib/NYTimes'
require_relative '../lib/generator/RandomMovies'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end