class Roman < ActiveRecord::Base
	def convertir(num)
		n=[]
		x = num.to_s.split('')
		reverse=x.reverse
		Integer i=0
		reverse.each do |number|
			#index=reverse.index(number)
			if(i==3)
				return "M"
			end
   			if(i==2)
				r=centena(number)
			end
			if(i==1)
				r=decena(number)
			end
			if (i==0)
				r=unidad(number)	
			end
			n.push(r)
			i=i+1
		end	
		n=n.reverse
		n = n.split('')
		n=n.join
		return n
	end

	def size(num)
		x = num.to_s.split('')
		tamaño=x.length
		return tamaño
	end
	def index(num,n)

		x = num.to_s.split('')
		n=n.to_s
		reverse=x.reverse
		index=reverse.index(n)			
		return index
	end

	def unidad(num)
		case num
		when "0"
		  return ""
		when "1"
		  return "I"
		when "2"
		  return "II"
		when "3"
		  return "III"
	  	when "4"
		  return "IV"
		when "5"
		  return "V"
	  	when "6"
		  return "VI"
	  	when "7"
		  return "VII"
		when "8"
		  return "VIII"
		when "9"
		  return "IX"

		end
	end

	def decena(num)
		case num
		when "0"
		  return ""
		when "1"
		  return "X"
		when "2"
		  return "XX"
		when "3"
		  return "XXX"
	  	when "4"
		  return "XL"
		when "5"
		  return "L"
	  	when "6"
		  return "LX"
	  	when "7"
		  return "LXX"
		when "8"
		  return "LXXX"
		when "9"
		  return "XC"

		end
	end
	def centena(num)
		case num
		when "0"
		  return ""
		when "1"
		  return "C"
		when "2"
		  return "CC"
		when "3"
		  return "CCC"
	  	when "4"
		  return "CD"
		when "5"
		  return "D"
	  	when "6"
		  return "DC"
	  	when "7"
		  return "DCC"
		when "8"
		  return "DCCC"
		when "9"
		  return "CM"

		end
	end


end
