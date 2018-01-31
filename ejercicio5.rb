# Se tiene la clase Morseable que contiene un método de instancia generate_hash los datos de traducción de número entero a código morse.

class Morseable
	def initialize(number)
		@number = number
	end
	
	def generate_hash(number)
		#Esto es una aberración y debe ser refactorizado!
		h = {'0': '-----', '1': '.----', '2': '..---', '3': '...--', '4': '....-', '5': '.....', '6': '-....', '7': '--...', '8': '---..', '9': '----.'}

	 h[number.to_s.to_sym]
	end
	
	def to_morse
		self.generate_hash(@number)
	end
end


m = Morseable.new(2)
print "El código morse seleccionado es = #{m.to_morse} \n"