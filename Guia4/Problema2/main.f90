program problema2
use iso
use funciones
implicit none
	!Declaracion de variables
	real(wp)			:: c, h, dfc
	integer(il)			::
	

	
	!Bloque de Procesamiento
	dfc = 1/(12*h)*(f(c - 2*h) - 8*(c-h) + 8*(c + h) - f(c + 2*h))	
	
	!Salida de Datos



end program problema2
