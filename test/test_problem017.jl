using Base.Test
using ProjectEuler

println("Test Problem0017: ")
println("-- main")
@time @test Problem017.solve() == 21124
