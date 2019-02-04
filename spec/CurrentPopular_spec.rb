require 'spec_helper'

describe NYTimes do

  context 'requesting information on a single current weather forecast correctly' do
    before(:all) do
      @NYTio = NYTimes.new.current_popular
      @NYTio.retrieve_current(ENV['API_KEY'],7)
      # p @NYTio.retrieve_current(ENV['API_KEY'],7)
    end

    it "should have api respond with a hash" do
      expect(@NYTio.retrieve_data).to be_kind_of(Hash)
    end

    it "should return an OK status be string" do 
      expect(@NYTio.retrieve_status).to be_kind_of(String)
    end

    it "should return an OK message" do 
      expect(@NYTio.retrieve_status).to match('OK')
    end

    it "should return number of results as an integer" do
      expect(@NYTio.retrieve_results).to be_kind_of(Integer)
      p 
    end

    it "should return an array" do 
      p @NYTio.retrieve_results_url
      # expect(@NYTio.retrieve_results_url).to be_kind_of(Array)
    end

  end
end
