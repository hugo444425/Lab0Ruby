module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end

  
end

module Chrip
  def sonido
	@son = rand(90) + 10
	0.upto(@son) do |loop_index|
		puts "chrip"
	end
   end
end

class Rabbit
  include Action
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Chrip  

  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.sonido

