$LOAD_PATH << '.'

require 'map.rb'
require 'engine.rb'

# Gothons from Planet Percal #25

map = Map.new('central_corridor')
game = Engine.new(map)
game.play()
