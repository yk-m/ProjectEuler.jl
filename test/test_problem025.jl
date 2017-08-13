using Base.Test
using ProjectEuler

println("Test Problem0025: ")
println("-- main")
@time @test Problem025.solve() == 4782

