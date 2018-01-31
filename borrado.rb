# Dado el arreglo, extraer todos los elementos que excedan mas de 5 caracteres

nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

# Realizar el ejercicio utilizando el método .select
datos = nombres.select{|elementos| elementos.length > 5 }
print "Los elementos que exceden 5 carácteres son: \n#{datos}\n\n"

# Utilizando .map crear una arreglo con los nombres en minúscula
datos = nombres.map{|elementos| elementos.downcase}
print "Los elementos en minúsculas son: #{datos}\n\n"

# Utilizando .select para crear un arreglo con todos los nombres que empiecen con P
datos = nombres.select{|elementos| elementos.start_with?('P') }
print "Los elementos que empiezan con P son: \n#{datos}\n\n"

# Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
datos = nombres.map{|elementos| elementos.length}
print "Los cantidad de letras de cada elementos es: #{datos}\n\n"
