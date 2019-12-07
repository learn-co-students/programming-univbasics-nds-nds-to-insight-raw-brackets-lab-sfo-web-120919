$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  result = {}
  idx = 0
  while idx < nds.length do
    name = nds[idx][:name]
    total = gross_for_director(nds[idx])
   result [name] = total
    idx += 1
  end
  pp result
end

def gross_for_director(director_data)
  i = 0
  total = 0
  while i < director_data[:movies].length do 
    total += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
   total
end

