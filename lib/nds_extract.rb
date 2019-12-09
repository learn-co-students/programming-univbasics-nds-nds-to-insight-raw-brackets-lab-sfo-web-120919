$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {
  }
  row_idx = 0 
  while row_idx < nds.length do
    director = nds[row_idx][:name]
    result[director] = 0 
    ele_idx = 0 
    while ele_idx < nds[row_idx][:movies].length do 
      result[director] += nds[row_idx][:movies][ele_idx][:worldwide_gross]
      ele_idx += 1 
    end
    row_idx += 1 
  end
  return result
end
 