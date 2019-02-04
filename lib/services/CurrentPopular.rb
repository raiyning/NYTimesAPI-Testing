require 'httparty'
require 'json'
require 'dotenv'
Dotenv.load('.env')

class CurrentPopular
  include HTTParty
  base_uri 'https://api.nytimes.com/svc/mostpopular/v2'

  def retrieve_current(api_key, days)
    @articles = JSON.parse(self.class.get("/viewed//#{days}.json?api-key=#{api_key}").body)
  end

  def retrieve_data
    @articles
  end

  def retrieve_status
    retrieve_data['status']
  end


end

