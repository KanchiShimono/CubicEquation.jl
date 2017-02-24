using CubicEquation
using Base.Test

@testset "solve" begin
    Base.info("Testing solver...")
    solver = Solver()
    @test isapprox(solver(1.0,-3.0,3.0,-1.0), ones(3))
    @test isapprox(solver(2.0,-3.0,-5.0,6.0), [-1.5,1.0,2.0])
    @test isapprox(solver(1.0,1.0,1.0,-3.0), [1.0,-1.0-im*√(2),-1.0+im*√(2)])
    @test_throws ErrorException solver(0.0,1.0,1.0,-3.0)
    Base.info("Done testing solver.")
end
