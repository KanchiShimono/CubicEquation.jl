using CubicEquation
using Base.Test

@testset "solve" begin
    println("Testing solver...")
    solver = Solver()
    @test isapprox(collect(solver(2.0,-3.0,-5.0,6.0)), collect((2.0,-1.5,1.0)))
    println("Done testing solver.")
end
