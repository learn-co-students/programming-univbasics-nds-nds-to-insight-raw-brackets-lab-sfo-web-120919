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
  idx = 0
  
  new_hash = {}
  new_arr = []
  len = nds.length
  jdx = 0 
  while idx < len do
  
   total = 0
  while jdx < nds[idx][:movies].length do 
      #pp nds[0][:movies][jdx][:worldwide_gross]
     total +=  nds[idx][:movies][jdx][:worldwide_gross]
      jdx += 1
   end
    new_hash[nds[idx][:name]] = total
    idx += 1
  end
  pp new_hash
end
