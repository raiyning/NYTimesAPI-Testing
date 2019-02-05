# NYTimesAPI-Testing
### Description

I have created a service object model (SOM) which takes data from https://developer.nytimes.com/get-started API service. Using documentation on the website we tried to test all the fields specifically for movie reviews API and have created unit tests that test the individual datasets and their data types using rspec.

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
4. make sure you're in the directory of NYTimes-Testing

### How to test
1. Bundle install to download dependicies
2. open https://developer.nytimes.com/get-started and create your own API key to use
3. Create a empty .env file and type out
```
API_KEY={insert_your_api_key_without_brackets}
```
4. Save file 
5. Within terminal type rspec 
6. Tests should then display in the terminal, whether they're correct or incorrect with associated contexts

## How to Use Randomcities generator
1. Copy generator folder within your project
> lib -> generator -> services
2. Copy the city_list.json
3. Require relative to the class file 
4. To create the object to use, instanciate the RandomMovies object
```ruby
test = RandomMoviesGenerator.new.get_movie_by_name
```
5. This will return a random movie string with 2500 different movies

6. This will return with a movie string usable with NYtimes API
>'pokemon'

### Challenges 
1. Deciding how much testing is needed
2. Finding out the API keys from NYTimes
3. More tests rather than datastypes

### Learning points
1. Structure classes using SOM principles
2. Trying to find out a difficult API key
3. Looping for larger datasets 
