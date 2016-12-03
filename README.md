# Cubic equation solver

Cubic equations solver module for Julia.

## Usage

Try to solve following equation.

	 usning CubicEquation

	 solver = Solver()

	 # a*x^3 + b*x^2 + c*x + d = 0
	 a = 1
	 b = -2
	 c = -3
	 d = 4

	 s1, s2, s3 = solver(a, b, c, d)
