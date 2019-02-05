require 'spec_helper'
require 'rspec'


describe NYTimes do 

  context 'requesting data from the movie review service works correctly' do 
    before(:all) do 
      @movies_reviews_service = NYTimes.new.current_popular
      @random_movie = RandomMoviesGenerator.new.get_movie_by_name
      @movies_reviews_service.movie_review_request_by_title(@random_movie)
    end 

    it 'should retrieve the results in as a hash' do 
      expect(@movies_reviews_service.retrieve_result).to be_kind_of(Hash)
    end

    it 'should retrieve the status as a string' do 
      expect(@movies_reviews_service.retrieve_status).to be_kind_of(String)
    end

    it 'should retrieve the copyright as a string' do 
      expect(@movies_reviews_service.retrieve_copyright).to be_kind_of(String)
    end

    it 'should retrieve the has more as a boolean' do 
      expect(@movies_reviews_service.retrieve_has_more).to eq(true) | eq(false)
    end

    it 'should retrieve the number results as an integer' do 
      expect(@movies_reviews_service.retrieve_num_results).to be_kind_of(Integer)
    end

    it 'should retrieve the results array as an array' do 
      expect(@movies_reviews_service.retrieve_result_array).to be_kind_of(Array)
    end

    it 'should retrieve all display title from results array as a string' do 
      @movies_reviews_service.retrieve_all_display_title.each do |display_title| 
        expect(display_title).to be_kind_of(String)
      end
    end

    it 'should retrieve all mpaa_rating from results array as a string' do 
      @movies_reviews_service.retrieve_all_mpaa_rating.each do |mpaa_rating| 
        expect(mpaa_rating).to be_kind_of(String)
      end
    end

    it 'should retrieve all critics_pick from results array as integer' do 
      @movies_reviews_service.retrieve_all_critics_pick.each do |critics_pick| 
        expect(critics_pick).to be_kind_of(Integer)
      end
    end

    it 'should retrieve all byline from results array as a string' do 
      @movies_reviews_service.retrieve_all_byline.each do |byline|
        expect(byline).to be_kind_of(String)
      end
    end

    it 'should retrieve all headline from results array as a string' do 
      @movies_reviews_service.retrieve_all_headline.each do |headline|
        expect(headline).to be_kind_of(String)
      end
    end

    it 'should retrieve all summary short from results array as a string' do 
      @movies_reviews_service.retrieve_all_summary_short.each do |summary_short|
        expect(summary_short).to be_kind_of(String)
      end
    end

    it 'should retrieve all publication date from results array as a string' do 
      @movies_reviews_service.retrieve_all_publication_date.each do |publication_date|
        expect(publication_date).to be_kind_of(String)
      end
    end

    it 'should retrieve all opening_date from results array as a string' do 
      @movies_reviews_service.retrieve_all_opening_date.each do |opening_date|
        expect(opening_date).to be_kind_of(String)
      end
    end

    it 'should retrieve all date_updated from results array as a string' do 
      @movies_reviews_service.retrieve_all_date_updated.each do |date_updated|
        expect(date_updated).to be_kind_of(String)
      end
    end

    it 'should retrieve all link from results array as a hash' do 
      @movies_reviews_service.retrieve_all_link.each do |link|
        expect(link).to be_kind_of(Hash)
      end
    end
    
    it 'should retrieve all link types from results array as a string' do 
      @movies_reviews_service.retrieve_all_link_type.each do |link_type|
        expect(link_type).to be_kind_of(String)
      end
    end

    it 'should retrieve all link urls from results array as a string' do 
      @movies_reviews_service.retrieve_all_link_url.each do |url|
        expect(url).to be_kind_of(String)
      end
    end

    it 'should retrieve all link suggested link text from results array as a string' do 
      @movies_reviews_service.retrieve_all_link_suggested_link_text.each do |suggested_link_text|
        expect(suggested_link_text).to be_kind_of(String)
      end
    end

    it 'should retrieve all multimedia from results array as null' do 
      @movies_reviews_service.retrieve_all_multimedia.each do |multimedia|
        expect(multimedia).to be(nil)
      end
    end

    it 'should include the title name in all display titles from results array' do 
      @movies_reviews_service.retrieve_all_display_title.each do |display_title| 
        expect(display_title).to include("Pokemon")
      end
    end

    it 'should retrieve all mpaa_rating from results array with the length of 1' do 
      @movies_reviews_service.retrieve_all_mpaa_rating.each do |mpaa_rating| 
        expect(mpaa_rating.length).to eq 1
      end
    end

    it 'should retrieve all publication date from results array with a length of 10' do 
      @movies_reviews_service.retrieve_all_publication_date.each do |publication_date|
        expect(publication_date.length).to eq 10
      end
    end

    it 'should retrieve all opening_date from results array with a length of 10' do 
      @movies_reviews_service.retrieve_all_opening_date.each do |opening_date|
        expect(opening_date.length).to eq 10
      end
    end

    it 'should retrieve all date_updated from results array with a length of 10' do 
      @movies_reviews_service.retrieve_all_date_updated.each do |date_updated|
        expect(date_updated.length).to eq 19
      end
    end

    it 'should include http:// in  all link urls from results array' do 
      @movies_reviews_service.retrieve_all_link_url.each do |url|
        expect(url).to include('http://')
      end
    end

  end 
end 