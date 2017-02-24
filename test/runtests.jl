using CubicEquation
using Base.Test

@testset "solve" begin
    println("Testing solver...")
    solver = Solver()
    @test isapprox(solver(1.0,-3.0,3.0,-1.0), ones(3))
    @test isapprox(solver(2.0,-3.0,-5.0,6.0), [-1.5,1.0,2.0])
    @test isapprox(solver(1.0,1.0,1.0,-3.0), [1.0,-1.0-im*√(2),-1.0+im*√(2)])
    println("Done testing solver.")
end
