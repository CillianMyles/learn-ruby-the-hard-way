class Scene

  @debug = false

  def initialize(debug)
    @debug = debug
  end

  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end

end
