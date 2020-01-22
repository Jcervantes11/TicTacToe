
	
	print "¿Cual es el tamaño del tablero?: "
	tamano = gets.chomp
	puts

	tablero = []
	tamanoNuevo = (tamano.to_i * tamano.to_i)
 	contador = 1
 	jugador = 1
 	signo = "X"

	dimensiones

	def dimensiones(tamano)
		@tamano=tamano
		@tamanoNuevo=tamanoNuevo
	end
 	

 	def tablero
 		for i in(0..((tamanoNuevo)-1))
 			tablero[i] = "-"
 		end
 	end

 	def mostrar
 		for j in(0..((tamanoNuevo)-1))
 			print tablero[j] 
 	 		print "  "
 	 		print "  "
 	 		print "  "

 	 	while (((j + 1)/tamano.to_i) == contador)
 	 			puts
 	 			puts
 	 			puts 
 	 			contador = contador + 1   
 	 	end
 		end
 	end
 	
 	tablero
 	mostrar
 	contador = 1

 	

 	puts
 	print "Para tener un orden, contaremos el tablero desde la esquina superior izquiera " 
 	print "hasta la casilla inferior deracha (casilla 1, casilla 2, casilla 3, casilla 4, casilla...)"


  	finJuego = false
 	while (not finJuego)
 	puts
 	puts
 	print "jugador " + jugador.to_s
 	puts 
 	print "Indica la casilla en la que quieras colocar " + signo + " :"
 	casilla = gets.chomp.to_i			
 		
 	if (casilla > tamanoNuevo.to_i)
 		print '"La casiila indicada no se encuentra dentro del rango del tablero"'
 		puts 
 		puts
 	elsif signo.to_s == "X"
 			tablero[casilla - 1] = signo.to_s 
 			signo = "O"
 			jugador = jugador + 1
 		
 	elsif signo.to_s == "O"
 			tablero[casilla - 1] = signo.to_s
 			signo = "X"
 			jugador = jugador - 1

 	#Cerrando el If		
 	end

 	mostrar
 	#for k in(0..((tamanoNuevo)-1))
 	#	print tablero[k] 
 	 #	print "  "
 	 #	print "  "
 	 #	print "  "

 	 #		while (((k + 1)/tamano.to_i) == contador)
 	 #			puts
 	 #			puts
 	 #			puts 
 	 #			contador = contador + 1   
 	 #		end
 	#end
 	contador = 1
 	#Cerrando el While
 	end 


