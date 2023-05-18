module derivadas
use iso
use funciones

implicit none 
contains
	subroutine derivada3centrada(c, h, f, dfc)
	
	
	
	
	end subroutine derivada3centrada
	
	
	subroutine derivada5centrada(c, h ,f, dfc)
        !Declaracion de Dummy variables
        real(wp), intent(in)            :: c
        real(wp), intent(in)            :: h
        real(wp), intent(in)            :: f
        real(wp), intent(out)           :: dfc 	
	    
	    !Declaracion de variables auxiliares
	    
	    dfc = 1/(12*h)*(f(c - 2*h) - 8*(c-h) + 8*(c + h) - f(c + 2*h))	
	    
	end subroutine derivada5centrada



end module derivadas
