# NYTimesAPI-Testing
### Description

This is an attempt to create a Test which on the https://developer.nytimes.com/get-started API service with documentation on the website we tried to test all the fields. The program will test a different parameter to the JSON file recieved from the website. The tests are created on rspec with a TDD approach and the classes written are in a SOM (Service Object Model)structure for good use. Stored within included is the ability to retrieve the cityID with city name with country initials. 
### Languages used
* Ruby 

### Frameworks, Libraries and Gems used
* Rspec
* HTTParty
* Json
* DotENV

### How to download
1. To download a copy click on 'clone or download' and you can download it as a zip file or git clone it.
2. Unzip the file
3. Open up the folder
4. make sure you're in the directory of API-RandomPGenerator

### How to test
1. Bundle install to download dependicies
2. open https://openweathermap.org/current and create your own API key to use
3. Create a empty .env file and type out
> API_KEY= {insert_your_api_key_without_brackets}
4. Save file 
2. Within terminal type rspec 
3. Tests should then display in the terminal, whether they're correct or incorrect with associated contexts

## How to Use Randomcities generator
1. Copy generator folder within your project
> lib -> generator -> services
2. Copy the city_list.json
3. Require relative to the class file 
3. To create the object to use, instanciate the Parse_json_cities
```ruby
test = RandomMoviesGenerator.new.get_movie_by_name
```
4. This will return a random movie string with 2500 different movies

6. This will return with cityID number usable with weather API
>'pokemon'

### Challenges 
1. Deciding the degree of testing required in each parameters
2. Inconsistent parameter recieved from the API
3. Definition of done testing
4. Taking time factor to consideration


### Learning points
1. Developed my experience of using an API with limited documentation
2. Structure classes using SOM principles


### Future work
1. All the foundations laid out, and very simple to add a random city generator for tests in the future development