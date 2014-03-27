module Lab0
	def palindromo(string)
		string = string.gsub(/[" "-@]/, "")
		string2 = string.gsub(/[\-~]/, "")
		if string2.eql?(string2.reverse)
			check = true
		else 
			check = false
		end
		puts check
	end
	
	def cont(string)
		string = 'prueba prueba hola jiji'.gsub(/[^\sa-zA-Z]/,"").split
		contador = Hash.new()
		0.upto(string.length) do 
			j=0
			pos=0	
			char=string[0]
			while pos < string.length
				if string[pos].eql? char
					string.delete_at pos
					pos -= 1
					j += 1
				end
				pos +=1
			end
			contador[char] = j
		end
		contador
	end

	def hanoi(numero_discos, t_origen, t_destino, t_alterna)
		if numero_discos==1 
      			puts "desde: "
      			puts (t_origen)
      			puts "hacia: "
      			puts (t_destino)
      			puts "---------"
   		else 
   			hanoi(numero_discos-1, t_origen, t_alterna, t_destino)
     			hanoi(1,t_origen, t_destino, t_alterna)
     			hanoi(numero_discos-1, t_alterna, t_destino, t_origen)
			
   		end
 	end
	
	def sort(array, ord)
		cont = 0
		if(ord.eql? 'asc')
  			while(1)
   				cambio = false
    				0.upto(array.size-2) do |i|
     					if array[i] > array[i+1]
        					array[i], array[i+1] = array[i+1], array[i]
        					cambio = true
      					end
				#cont+=1
    				end
    				if (cambio == false)
					break
				end
  			end
		end
		if(ord.eql? 'des')
  			while(1)
   				cambio = false
    				0.upto(array.size-2) do |i|
     					if array[i] < array[i+1]
        					array[i], array[i+1] = array[i+1], array[i]
        					cambio = true
      					end
    				end
    				if (cambio == false)
					break
				end
  			end
		end
	array	
	end

	def cuenta_char(string, char)
		i = 0
		string.each_char do |c|
			if(c == char)	
				i+=1
			end
		end
		puts ("el caracter:  #{char}  aparece  #{i} veces")
	end	

	def atoi(string)
  		neg = false
  		result = 0 
  		string.chars.each_with_index do |char, index|
   			if char == '-'
      				neg = true
      				string.chars.to_a.delete_at(index)
    			else
      				result = result + char.to_i*(10**(string.length - 1 - index))
    			end
  		end
		if (neg == true)
			result = -result
		end
  		puts result
	end
end

class Lab0Test
	include Lab0
end

test = Lab0Test.new
test.palindromo "algoalgo"
test.cont "esta es una prueba"
