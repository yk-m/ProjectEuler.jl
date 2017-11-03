using Base.Test
using ProjectEuler

println("Test Problem0026: ")
println("-- main")
@time @test Problem026.solve() == 983
