require_relative 'services/CurrentPopular'

class NYTimes
  #superclass
  def current_popular
    CurrentPopular.new
  end
end