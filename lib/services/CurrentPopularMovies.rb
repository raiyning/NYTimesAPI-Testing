require 'httparty'
require 'json'
require 'dotenv'
Dotenv.load('.env')

class CurrentPopularMovies
  include HTTParty
  base_uri 'https://api.nytimes.com/svc/mostpopular/v2'

  def retrieve_current(api_key, title)
    @articles = JSON.parse(self.class.get("reviews/search.json?query=#{title}&api-key=#{api_key}").body)
  end

  def retrieve_result
    @movie_review_data
  end

  def retrieve_status
    retrieve_result['status']
  end

  def retrieve_copyright
    retrieve_result['copyright']
  end

  def retrieve_has_more
    retrieve_result['has_more']
  end

  def retrieve_num_results
    retrieve_result['num_results']
  end


end

# test = CurrentPopular.new
# p test.retrieve_current(ENV['API_KEY'],7)
# # p test.retrieve_results_url