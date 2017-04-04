# Gothons from Planet Percal #25


## SCENE
class Scene

  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end

end


## ENGINE
class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # remember to print last scene
    current_scene.enter()
  end

end


## DEATH SCENE
class Death < Scene

end
