#!/usr/bin/env python3
from math import sqrt

def main():
	#Ingresamos los datos a,b,c#
	try:	
		a = float(input("ingrese a: \n"))
		b = float(input("ingrese b: \n"))
		c = float(input("ingrese c: \n"))
	except:
		print("Deben ser numeros, ejecuta otra vez")
		return 0
	#Vemos si es una cuadratica.
	if( (a == 0) & (b == 0) ):
		print("No hay solucion! \n")
	elif(a == 0):
		resultado = -c/b
		print("La solucion es lineal: "+ str(resultado))
	else:
		#Si b es realmente mas grande que a y c
		if ( b > 100000*a) & (b > 100000*c) :
			signo = str(b)[0]
			if signo == '-':
				signo = -1
			else:
				signo = 1
			determinante = round(b*b - 4*a*c,6)
			numerador_raiz = -b - (signo)*sqrt(b*b - 4*a*c)
			raiz_1 = numerador_raiz/(2*a)
			raiz_2 = c/(a*raiz_1)
			print("Dos Soluciones reales : X1 = "+str(round(raiz_1,6))+" X2 = "+str(round(raiz_2,6)))
			return 0
		#Calculamos determinante, lo truncamos a 6 cifras.
		elif (round(b*b,5) - round(4*a*c,5) != 0):
			#Si es que el determinante es significativo:
			determinante = round(b*b - 4*a*c,6)
			partereal = round(-b/(2*a),6)
			if(determinante == 0):
				print("Ceros repetidos: X1 = "+str(partereal)+" X2 = "+str(partereal))
			elif(determinante < 0):
				determinante = -1*determinante
				parteimaginaria = sqrt(determinante)
				print("Ceros imaginarios: X1 ="+str(partereal)+"+"+str(round(parteimaginaria,6))+"i  X2 = "+str(partereal)+"-"+str(round(parteimaginaria,6))+"i")
			else:
				cero1 = partereal + sqrt(determinante)/(2*a)
				cero2 = partereal - sqrt(determinante)/(2*a)
				print("Dos soluciones reales: X1 = "+format(cero1,".6f")+" X2 = "+format(cero2,".6f"))
		else:
			parte_real = round(-b/(2*a),6)
			print("Dos soluciones reales: X1 = "+str(parte_real)+" X2 = "+str(parte_real))
	return 0
main()
