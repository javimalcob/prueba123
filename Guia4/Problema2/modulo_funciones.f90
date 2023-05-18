module funciones
use iso
implicit none
contains
    function f1(x)
        real(wp)                   :: f1
        real(wp), intent(in)       :: x
        f1 = cos(x)
    end function f1
    
    function f2(x)
        real(wp)                   :: f2
        real(wp), intent(in)       :: x
        f2 = exp(x)
    end function f2

end module funciones
