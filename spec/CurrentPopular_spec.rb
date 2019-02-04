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

    it "should return an OK status" do 
      expect(@NYTio.retrieve_status).to be_kind_of(String)
    end

    it "should return an OK message" do 
      expect(@NYTio.retrieve_status).to { should == "OK" }
    end
  end
end
