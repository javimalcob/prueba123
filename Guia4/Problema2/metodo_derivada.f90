module derivadas
use iso
use funciones

implicit none 
contains

!-------------------------------------------------------------------------------------
	subroutine derivada3extremo(x, h, f, dfc)
	    !Declaracion de dummy variables
	    real(wp), intent(in)                :: c 
	    real(wp), intent(in)                :: h 
	    real(wp), intent(in)                :: f
	    real(wp), intent(out)               :: dfc
	    !Declaracion de variables auxiliares
	    
	    dfc = 1._wp/2._wp*h * (-3._wp*f(x) + 4._wp*f(c + h) -2._wp*f(c + 2._wp*h))
	
	end subroutine derivada3extremo
	
!-------------------------------------------------------------------------------------	
	
	subroutine derivada3centrada(c, h, f, dfc)
	    !Declaracion de Dummy varaibles
	    real(wp), intent(in)            :: c
        real(wp), intent(in)            :: h
        real(wp), intent(in)            :: f
        real(wp), intent(out)           :: dfc 	
	    
	    dfc = 1._wp/2_wp*h * (f(c - h) - f(c + h))
	
	end subroutine derivada3centrada
!-------------------------------------------------------------------------------------
	
	subroutine derivada5extremo(c, h, f, dfc)
	    !Declaracion de dummy variables
	    real(wp), intent(in)            :: c
        real(wp), intent(in)            :: h
        real(wp), intent(in)            :: f
        real(wp), intent(out)           :: dfc
        
        dfc = 1._wp/12._wp*h*(-25._wp*f(c) + 48._wp * f(c + h)- 36._wp * f(c + 2._wp*h) + 16._wp * f(c + 3._wp*h) - 3._wp*f(c + 4._wp*h))
	end subroutine derivada5extremo
	
!-------------------------------------------------------------------------------------	
	
	subroutine derivada5centrada(c, h ,f, dfc)
        !Declaracion de Dummy variables
        real(wp), intent(in)            :: c
        real(wp), intent(in)            :: h
        real(wp), intent(in)            :: f
        real(wp), intent(out)           :: dfc 	
	    
	    !Declaracion de variables auxiliares
	    
	    dfc = 1._wp/(12._wp*h)*(f(c - 2._wp*h) - 8._wp*(c-h) + 8._wp*(c + h) - f(c + 2._wp*h))	
	    
	end subroutine derivada5centrada

!-------------------------------------------------------------------------------------

end module derivadas
