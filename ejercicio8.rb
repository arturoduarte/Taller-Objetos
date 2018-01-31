# 1. Crear la clase punto, un punto tiene una posición x y una posición y .
# 2. Crear métodos getter y setter para los atributos del punto.
# 3. Crear 10 puntos al azar.

class Punto
	attr_accessor :x,:y
	def initialize(x,y)
		@x = x
		@y = y
	end

	def azar
		10.times do
			puts "Los numeros al azar son: x:#{rand(x)} y:#{rand(y)}"
		end
	end
end

#Pasamos por parametro el rango para los números aleatorios
aleatorio = Punto.new(100,100)
aleatorio.azar

# también se podría hacer de esta forma
# puntos = []
# 10.times do
# 	puntos.push(Punto.new(rand(100),rand(100)))
# end