$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)

  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  pp nds
  #
  total = {}

  #movies = directors_database[:name][0][:worldwide_gross]
  # #pp movies
  nds.each_with_index do |director,i|

    director_name = director[:name]
    total[director_name] = 0
    director[:movies].each do |movie|

      total[director_name] += movie[:worldwide_gross]
    end
    #director.each do
  #   puts movie[:title]
  end
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  return total
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!

end
