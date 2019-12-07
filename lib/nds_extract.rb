$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  hash = Hash.new
  gross_total = 0
  directors_database.each do |director|
    director[:movies].each do |movie|
      gross_total += movie[:worldwide_gross]
    end
    hash[director[:name]] = gross_total
    gross_total = 0
  end
  return hash
end

