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

  def retrieve_result_array
    retrieve_result['results']
  end

  def retrieve_all_display_title

    display_title = []
    retrieve_result_array.each do |title|
      display_title << title['display_title']
    end
    display_title
  end

  def retrieve_all_mpaa_rating

    mpaa_rating = []
    retrieve_result_array.each do |result|
      mpaa_rating << result['mpaa_rating']
    end
    mpaa_rating
  end

  def retrieve_all_critics_pick

    critics_pick = []
    retrieve_result_array.each do |result|
      critics_pick << result['critics_pick']
    end
    critics_pick
  end

  def retrieve_all_byline

    byline = []
    retrieve_result_array.each do |result|
      byline << result['byline']
    end
    byline
  end

  def retrieve_all_headline

    headline = []
    retrieve_result_array.each do |result|
      headline << result['headline']
    end
    headline
  end

  def retrieve_all_summary_short

    summary_short = []
    retrieve_result_array.each do |result|
      summary_short << result['summary_short']
    end
    summary_short
  end

  def retrieve_all_publication_date

    publication_date = []
    retrieve_result_array.each do |result|
      publication_date << result['publication_date']
    end
    publication_date
  end

  def retrieve_all_opening_date

    opening_date = []
    retrieve_result_array.each do |result|
      opening_date << result['opening_date']
    end
    opening_date
  end

  def retrieve_all_date_updated

    date_updated = []
    retrieve_result_array.each do |result|
      date_updated << result['date_updated']
    end
    date_updated
  end

  def retrieve_all_link

    link = []
    retrieve_result_array.each do |result|
      link << result['link']
    end
    link
  end

  def retrieve_all_link_type

    link_type = []
    retrieve_result_array.each do |result|
      link_type << result['link']['type']
    end
    link_type
  end

  def retrieve_all_link_url

    link_url = []
    retrieve_result_array.each do |result|
      link_url << result['link']['url']
    end
    link_url
  end

  def retrieve_all_link_suggested_link_text

    suggested_link_text = []
    retrieve_result_array.each do |result|
      suggested_link_text << result['link']['suggested_link_text']
    end
    suggested_link_text
  end

  def retrieve_all_multimedia

    multimedia = []
    retrieve_result_array.each do |result|
      multimedia << result['multimedia']
    end
    multimedia
  end

end

# test = CurrentPopular.new
# p test.retrieve_current(ENV['API_KEY'],7)
# # p test.retrieve_results_url