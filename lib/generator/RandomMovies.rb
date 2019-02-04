require 'json'

class RandomMoviesGenerator
  attr_accessor :json_data

  def initialize
    @json_data = JSON.parse(File.read('movie_names.json'))  
  end

  # method to search through the arrays of movie names
  def get_movie_by_name
    array = []
    @json_data.each do |data|
      array << data['title']
    end
    array[random_number_generator]
  end

  def random_number_generator
    Random.new.rand(0..25000)
  end
end
