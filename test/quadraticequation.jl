@testset "Quadratic equation" begin
    Base.info("Testing quadratic equation...")
    solver = Solver()
    @test isapprox(solver(1.0,-4.0,3.0), [1.0,3.0])
    @test isapprox(solver(1.0,-2.0,1.0), ones(2))
    @test isapprox(solver(1.0,0.0,1.0), [-im,im])
    @test_throws ErrorException solver(0.0, 1.0, 2.0)
    Base.info("Done testing quadratic equation.")
end
