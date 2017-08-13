using Base.Test
using ProjectEuler

println("Test Problem009: ")
println("-- main")
@time @test Problem009.solve() == 31875000
