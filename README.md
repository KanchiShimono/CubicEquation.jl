# Cubic equation solver

Cubic equations solver module for Julia.

## Usage

Try to solve following equation.
``` julia
	 using CubicEquation

	 solver = Solver()

	 # a*x³ + b*x² + c*x + d = 0
	 a = 1
	 b = -2
	 c = -3
	 d = 4

	 s1, s2, s3 = solver(a, b, c, d)
	 # s1 = 2.56155, s2 = -1.56155, s3 = 1.0
```
