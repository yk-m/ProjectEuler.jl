using Base.Test
using ProjectEuler

println("Test Problem0019: ")
println("-- main")
@time @test Problem019.solve() == 171
