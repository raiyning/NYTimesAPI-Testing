require_relative 'services/CurrentPopularMovies'

class NYTimes
  #superclass
  def current_popular
    CurrentPopular.new
  end
end