#Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la siguiente estructura:
class Dog
	def initialize(datos)
		@datos = datos
	end

	def ladrar
		puts "#{@datos[:nombre]} está ladrando"
	end

end


propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
nuevo_perro = Dog.new(propiedades)
nuevo_perro.ladrar
# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. Luego generar un método llamado ladrar que, mediante interpolación, imprima "Beethoven está ladrando!"