# 1. Crear la clase punto, un punto tiene una posición x y una posición y .
# 2. Crear métodos getter y setter para los atributos del punto.
# 3. Crear 10 puntos al azar.

class Punto
	attr_accessor :x,:y
	def initialize(x,y)
		@x = x
		@y = y
	end
end

puntos = []
10.times do
	puntos.push(Punto.new(rand(10),rand(10)))
end

puntos.each do |elemento| 
	puts "Los elementos son: x = #{elemento.x} --> y = #{elemento.y}"
end