require_relative '../scene'

class LaserWeaponArmory < Scene

  def enter
    puts "You do a dive roll into the Weapon Armory, crouch and scan the room"
    puts "for more Gothons that might be hiding.  It's dead quiet, too quiet."
    puts "You stand up and run to the far side of the room and find the"
    puts "neutron bomb in its container.  There's a keypad lock on the box"
    puts "and you need the code to get the bomb out.  If you get the code"
    puts "wrong 10 times then the lock closes forever and you can't"
    puts "get the bomb.  The code is 3 digits."
    code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    if @debug 
        puts "Pssst... the code is #{code}" 
    end
    print "[keypad]> "
    guess = $stdin.gets.chomp
    guesses = 0

    # want 10 guesses total, so 9 since we've guessed once already
    while guess != code && guesses < 9
      puts "BZZZZEDDD!"
      guesses += 1
      print "[keypad]> "
      guess = $stdin.gets.chomp
    end

    if guess == code
        puts "The container clicks open and the seal breaks, letting gas out."
        puts "You grab the neutron bomb and run as fast as you can to the"
        puts "bridge where you must place it in the right spot."
        return 'the_bridge'
    else
        puts "The lock buzzes one last time and then you hear a sickening"
        puts "melting sound as the mechanism is fused together."
        puts "You decide to sit there, and finally the Gothons blow up the"
        puts "ship from their ship and you die."
        return 'death'
    end
  end
  
end
