require_relative 'services/CurrentPopularMovies'

class NYTimes
  #superclass
  def current_popular
    CurrentPopularMovies.new
  end
end