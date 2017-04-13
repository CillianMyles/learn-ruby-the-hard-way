require './map'
require './engine'

# Gothons from Planet Percal #25

debug = true
map = Map.new('central_corridor', debug)
game = Engine.new(map)
game.play()
