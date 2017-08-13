using Base.Test
using ProjectEuler

println("Test Problem0011: ")
println("-- main")
@time @test Problem011.solve() == 70600674
