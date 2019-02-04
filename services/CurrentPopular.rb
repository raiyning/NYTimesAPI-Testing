require 'httparty'
require 'json'
require 'dotenv'
Dotenv.load('.env')

class CurrentPopular
  include HTTParty
  base_uri 'https://api.nytimes.com/svc/mostpopular/v2'

  def retrieve_current(api_key, days)
    @weather = JSON.parse(self.class.get("/emailed/#{days}.json?api-key=#{api_key}").body)
  end
end


test = CurrentPopular.new 
p test.retrieve_current('b3mYUberYqdMrBAMGb9uCPTGCEfmtw36','7')