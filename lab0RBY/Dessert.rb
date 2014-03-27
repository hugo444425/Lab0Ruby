class Dessert
	attr_accessor:name
	attr_accessor:calories
        def initialize(name, calories)
                # YOUR CODE HERE
		@name = name
		@calories = calories
        end

        def healthy?
		ret = false
		if(@calories<=199)
			ret = true
		end
		ret
                # YOUR CODE HERE
        end

        def delicious?
		true
                # YOUR CODE HERE
        end

        def to_s
                # YOUR CODE HERE
		"Nombre: #{@name}, Calorias: #{@calories}"
        end
end

class JellyBean < Dessert
	attr_accessor:flavor
        def initialize(name, calories, flavor)
		@flavor = flavor
		super name, calories
                # YOUR CODE HERE
        end

        def delicious?
                # YOUR CODE HERE	
		ret = true
		if(@flavor.eql? "black licorice")
			ret = false
		end
		ret
        end

        def to_s
                # YOUR CODE HERE
		"Nombre: #{@name}, Calorias: #{@calories}, Sabor: #{@flavor}"
        end
end
