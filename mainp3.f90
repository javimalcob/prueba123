program problema3
use iso
use mod_interpolacion
use mod_funciones
implicit none
        !Declaracion de variables
        real(wp)                 :: a, b, h
        integer(il)              :: n, np, i
        real(wp), dimension(0:9) :: x
        real(wp), dimension(0:9) :: fx
        
        
        np = 9
        a = 0.0_wp
        b = 1.0_wp


        do i=0,np
                h = a + i*(b-a)/np
                x(i) = h
                fx(i) = f1(x(i)) 
                write(*,*) h
        end do
        write(*,*) x, fx


        !subroutine lagrange(n, x, y, xc, pxc)
        !!graficar el polinomio de lagrange, y la funcion
        !!en GNUPLOT en 10 puntos de interpolacion
        !!luego tomar 3 puntos particulaes y hacer la diferencia
        !!para ver el error absoluto
        call lagrange(np, x, fx, xc, pxc)    
end program problema3
