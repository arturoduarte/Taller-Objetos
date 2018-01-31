class Student
	attr_accessor :name, :nota
	def initialize(name,nota)
		@name = name
		@nota= nota
	end
end

nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)
estudiantes = []
	i = 1
	nombres.each do |nombre|
		estudiantes.push(Student.new(nombre,i))
		i += 1
end

notas = estudiantes.map {|alumno| alumno.nota}
print "\n"
print "Las Notas son: #{notas}\n"