using Base.Test
using ProjectEuler

println("Test Problem0022: ")
println("-- main")
@time @test Problem022.solve() == 871198282

