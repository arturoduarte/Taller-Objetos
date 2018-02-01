#Crea una clase llamada MyPet, La cual, al inicializarse genere una mascota con los siguientes parametros:
class MyPet
	def initialize name
		@name = name
		@sleep = false
		@satisfied = 10 # Esta lleno
		@fullIntestine = 0 # No necesita ir
		# @hungry = false
		puts "============================="
		puts "#{@name} nace !!!\n"
		puts "============================="
	end
	
	
	# Crea un método para hacer caminar a tu mascota e ir al baño, puedes seguir este ejemplo:
	# Agrego a partir de aqui############################
	def walk
		puts "=================================="
		puts "Haces caminar a #{@name} !!! \n"
		puts "=================================="
		@satisfied -= 2
		@fullIntestine += 2
		timeLapse
	end
	
	def comer
		puts "=================================="
		puts "Haces comer a #{@name} .!!!"
		puts "=================================="
		@satisfied = 10
		timeLapse
	end
	
	def bathroom
		puts "#{@name} está en el baño..."
		@fullIntestine = 0
		timeLapse
	end
	
	def dormir
		puts "=================================="
		puts "Haces dormir a #{@name}.!!! "
		puts "=================================="
		@satisfied -= 2
		@fullIntestine += 2
		@sleep = true
		timeLapse
	end
	
	# Hasta aquí############################
	def hungry?
		@satisfied <= 2
	end
	
	def needToGo?
		@fullIntestine == 10
	end
	
	def timeLapse
    if @satisfied > 0
      #  Mueve el alimento del vientre al intestino.
      @satisfied      = @satisfied      - 1
      @fullIntestine  = @fullIntestine  + 1
    else  #  Nuestro dragon esta hambriento!
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts '¡' + @name + ' esta hambriento!  En su desesperacion, ¡Murio de Hambre!'
      exit  #  Sale del programa.
    end


    if @fullIntestine  > 10
      @fullIntestine  = 0
      puts '¡Uy!  ' + @name + ' tuvo un accidente...'
    end

    if hungry?
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts 'El estomago de ' + @name + ' retumba...'
    end

    if needToGo?
      if @sleep
        @sleep = false
        puts 'Se despierta de repente!'
      end
      puts @name + ' hace la danza del baño...'
    end
  end
end

opcion= ''
generar = MyPet.new('Tyson')
while opcion != "salir"
	puts "Opciones"
	puts "Presione '1' para Alimentarlo"
	puts "Presione '2' para Hacerlo dormir"
	puts "Presione '3' Salir a Caminar"
	puts "Ingrese 'Salir' para salir del Sistema"
	
	opcion = gets.chomp
	system("clear")
	case opcion
		when "1"
			generar.comer
			when "2"
				generar.dormir
				when "3"
					generar.walk
					when "4"
						puts '* La mascota va al baño *'
						mascota.bathroom
					else
						puts 'Opción no es válida... Intente nuevamente'
					end
				end 
			