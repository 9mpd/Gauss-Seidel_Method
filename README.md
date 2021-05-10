# Gauss-Seidel_Method
Solution of system of linear equations.
### An iterative method to solve a system of linear equations, AX = B. <br>

A general linear iterative method for the solution of the system of <br>
linear equations is defined as :<br>
**X<sup>(k+1)</sup> = H\*X<sup>(k)</sup> + c**     where k = 0,1,2... and <br>
**X<sup>(k+1)</sup>** and **X<sup>(k)</sup>)** are the (k+1)th and kth iterations for X. <br>
**H** is called the iteration matrix.

*In the limiting case when k -> ∞, X<sup>(k)</sup> converges to the exact solution.*
**X = A<sup>(-1)</sup>B**

For Gauss-Seidel Iteration Method :-<br>
*Assumption : Diagonal entries of coefficient matrix A are pivot elements.*<br>
**H = -(D + L)<sup>-1</sup>\*U** and <br>
**c = (D + L)<sup>-1</sup>\*B** where <br>
**D** is the diagonal matrix, **L** & **U** are respectively <br>
lower and upper triangular matrices with zero diagonal entries such that <br>
**A = L + D + U**
