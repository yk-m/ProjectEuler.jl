using Base.Test
using ProjectEuler

println("Test Problem0016: ")
println("-- main")
@time @test Problem016.solve() == 1366
