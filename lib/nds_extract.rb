$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def pretty(nds)
pp nds
end
pretty(directors_database)

def directors_totals(nds)
  director_total = {}
  total = 0
  directors_database.each do |dir_name, dir_info|
    dir_name[:movies].each do |movie|
      total += movie[:worldwide_gross]
    end
    return total
  end
end
