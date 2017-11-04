using Base.Test
using ProjectEuler

println("Test Problem0027: ")
println("-- main")
@time @test Problem027.solve() == -59231
