$LOAD_PATH << '.'

require 'scenes/central_corridor.rb'
require 'scenes/laser_weapon_armory.rb'
require 'scenes/the_bridge.rb'
require 'scenes/escape_pod.rb'
require 'death.rb'
require 'scenes/finished.rb'

class Map

  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armory' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new(),
    'finished' => Finished.new()
  }

  def initialize(start_scene)
    @start_scene = start_sce
  end

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end

end
