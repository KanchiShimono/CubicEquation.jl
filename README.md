# Cubic equation solver

Cubic equations is solver for Cubic and Quadratic equations. This module is writen
in Julia.


## Requirements

- Julia 0.5


## Installation

Clone this repository in Julia repl.
```julia
Pkg.clone("https://github.com/KanchiShimono/CubicEquation.jl")
```


## Usage

Example solving Cubic and Quadratic equations.
``` julia
	 using CubicEquation

	 # create Solver object
	 solver = Solver()

	 # For Cubic equation
	 # a*x³ + b*x² + c*x + d = 0
	 a = 1
	 b = -2
	 c = -3
	 d = 4

	 # Solve equation
	 s1, s2, s3 = solver(a, b, c, d)
	 # s1 = -1.56155, s2 = 1.0, s3 = 2.56155


	 # For Quadratic equation
	 # a*x² + b*x + c = 0
	 a = 1.0
	 b = -4.0
	 c = 3.0

	 # Solve equation
	 s1, s2 = solver(a, b, c)
	 # s1 = 1.0, s2 = 3.0
```
