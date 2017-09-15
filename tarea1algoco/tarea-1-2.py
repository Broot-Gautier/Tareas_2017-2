import math

def evaluar_funcion(x):
	return (x-1)*(x-2)*(x-3)*(x-4)*(x-5)*(x-6)*(x-7)*(x-8)*(x-9)*(x-10)*(x-11) + pow(x,6)

def XN2(xn,xn1):
        f_de_xn_mas1 = evaluar_funcion(xn1)*(xn1-xn)/(evaluar_funcion(xn1)-evaluar_funcion(xn))
        xn2 = xn1 - f_de_xn_mas1
        return xn2


def secant_metod(x_0,x_1):
	error = 1
	lista_xs = list()
	lista_xs.append(x_0)
	lista_xs.append(x_1)
	while(error > 0.0001):
		x_nmas2 = XN2(lista_xs[-2],lista_xs[-1])
		error = abs((x_nmas2 - lista_xs[-1])/x_nmas2)
		lista_xs.append(x_nmas2)
	else:
		 print(str(lista_xs[-1])[:7])
def main():
	lista_rangos_aproximados = [0.8,1.2,1.9,2.2,2.7,3.2,3.9,4.4]
	secant_metod(0.8,1.2)
	secant_metod(1.9,2.2)
	secant_metod(2.7,3.2)
	secant_metod(3.7,4.0)

main()