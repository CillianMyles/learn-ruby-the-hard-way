require './scenes/central_corridor'
require './scenes/laser_weapon_armory'
require './scenes/the_bridge'
require './scenes/escape_pod'
require './death'
require './scenes/finished'

class Map

  def initialize(start_scene, debug)
    @start_scene = start_scene
    @debug = debug
    @scenes = {
      'central_corridor' => CentralCorridor.new(@debug),
      'laser_weapon_armory' => LaserWeaponArmory.new(@debug),
      'the_bridge' => TheBridge.new(@debug),
      'escape_pod' => EscapePod.new(@debug),
      'death' => Death.new(@debug),
      'finished' => Finished.new(@debug)
    }
  end

  def next_scene(scene_name)
    val = @scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end

end
