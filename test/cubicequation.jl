@testset "Cubic equation" begin
    Base.info("Testing cubic equation...")
    solver = Solver()
    @test isapprox(solver(1.0,-3.0,3.0,-1.0), ones(3))
    @test isapprox(solver(2.0,-3.0,-5.0,6.0), [-1.5,1.0,2.0])
    @test isapprox.(solver(1.0,1.0,1.0,-3.0), Union{Real,Complex}[1.0,-1.0-im*√(2),-1.0+im*√(2)]) == ones(Bool, 3)
    @test_throws ErrorException solver(0.0,1.0,1.0,-3.0)
    Base.info("Done testing cubic equation.")
end
