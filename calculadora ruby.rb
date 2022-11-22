#calculadora hecha con ruby por mi, tiene correcciones y funciones
#sencillas.

def pares
	print "----------------------------------------\n"
	print "Bienvenido a los numero pares o impares\n"
	print "----------------------------------------\n"
	print "Indique el numero:\n"
	print "*Numero: "
	numero_p = gets.chomp.to_i
	
	if numero_p % 2 == 0
		puts "El numero #{numero_p} es par."
	else
		puts "El numero #{numero_p} es impar"
	end
	
	user = 0
	until user == 2
		print "*¿Deseas continuar(1) o ir al menu (2)?: \n"
		print ">>> "
		user = gets.chomp.to_i
		
		case user
		
		when 1
			print "Continuemos...\n"
			pares
			break
		
		when 2
			print "OK yendo al menu"
			calculadora
			break
		
		else
			print "Caracter no soportado por el programa.\n"
		end		
	end
end

def division
	print "-------------------------------\n"
	print "Bienvenido a las divisiones\n"
	print "-------------------------------\n"
	print "Indique los numero que quiera dividir:\n"
	print "*Numero 1: "
	numero_uno = gets.chomp.to_i
	print "*Numero 2: "
	numero_dos = gets.chomp.to_i
	
	begin
		res = numero_uno / numero_dos
		puts "El resultado de la division entre #{numero_uno} y #{numero_dos} es: #{res}"
	rescue => err
		puts err.message
	end
	
	user = 0
	until user == 2
		print "*¿Deseas continuar dividiendo (1) o ir al menu (2)?: \n"
		print ">>> "
		user = gets.chomp.to_i
		
		case user
		
		when 1
			print "Continuemos...\n"
			division
			break
		
		when 2
			print "OK yendo al menu"
			calculadora
			break
		
		else
			print "Caracter no soportado por el programa.\n"
		end		
	end
end

def multiplicacion
	print "-------------------------------\n"
	print "Bienvenido a las multiplicacion\n"
	print "-------------------------------\n"
	print "Indique los numero que quiera multiplicar:\n"
	print "*Numero 1: "
	numero_uno = gets.chomp.to_i
	print "*Numero 2: "
	numero_dos = gets.chomp.to_i
		
	res = numero_uno * numero_dos
		
	puts "El resultado de la multiplicacion entre #{numero_uno} y #{numero_dos} es: #{res}"
	
	user = 0
	until user == 2
		print "*¿Deseas continuar multiplicando (1) o ir al menu (2)?: \n"
		print ">>> "
		user = gets.chomp.to_i
		
		case user
		
		when 1
			print "Continuemos...\n"
			multiplicacion
			break
		
		when 2
			print "OK yendo al menu"
			calculadora
			break
		
		else
			print "Caracter no soportado por el programa.\n"
		end		
	end
end

def resta 
	print "-----------------------\n"
	print "Bienvenido a las restas\n"
	print "-----------------------\n"
	print "Indique los numero que quiera restar:\n"
	print "*Numero 1: "
	numero_uno = gets.chomp.to_i
	print "*Numero 2: "
	numero_dos = gets.chomp.to_i
		
	res = numero_uno - numero_dos
		
	puts "El resultado de la resta entre #{numero_uno} y #{numero_dos} es: #{res}"
	
	user = 0
	until user == 2
		print "*¿Deseas continuar restando (1) o ir al menu (2)?: \n"
		print ">>> "
		user = gets.chomp.to_i
		
		case user
		
		when 1
			print "Continuemos...\n"
			resta
			break
		
		when 2
			print "OK yendo al menu"
			calculadora
			break
		
		else
			print "Caracter no soportado por el programa.\n"
		end		
	end
end

def suma
	print "----------------------\n"
	print "Bienvenido a la sumas\n"
	print "----------------------\n"
	print "Indique los numero que quiera sumar:\n"
	print "*Numero 1: "
	numero_uno = gets.chomp.to_i
	print "*Numero 2: "
	numero_dos = gets.chomp.to_i
		
	res = numero_uno + numero_dos
		
	puts "El resultado de la suma entre #{numero_uno} y #{numero_dos} es: #{res}"
	
	user = 0
	
	until user == 2
		print "*¿Deseas continuar sumando (1) o ir al menu (2)?: \n"
		print ">>> "
		user = gets.chomp.to_i
		
		case user
		
		when 1
			print "Continuemos...\n"
			suma
			break
		
		when 2
			print "OK yendo al menu"
			calculadora
			break
		
		else
			print "Caracter no soportado por el programa.\n"
		end		
	end
end

def calculadora
	user = 0
	until user == 6
		print "Calculadora Ruby:\n"
		print "-------------------\n"
		print "1.Suma\n"
		print "2.Resta\n"
		print "3.Multiplicacion\n"
		print "4.Division\n"
		print "5.Numeros pares o Impares\n"
		print "6.Salir.\n"
		print "-------------------\n"
		print ">>> " 
		
		user = gets.chomp.to_i 
		
		case user
		
		when 1
			puts "Usted eligio suma."
			suma
			break
		when 2
			puts "Usted eligio resta."
			resta
			break
		when 3
			puts "Usted eligio multiplicacion."
			multiplicacion
			break
		when 4
			puts "Usted eligio division."
			division
			break
		when 5
			puts "Usted eligio numero par o impar"
			pares
			break
		when 6
			puts "Ok hasta luego."
			break
		else
			puts "Numero o caracter no soportado por el programa."
		end
	end
end

calculadora
