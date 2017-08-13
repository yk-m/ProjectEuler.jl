using Base.Test
using ProjectEuler

println("Test Problem0021: ")
println("-- main")
@time @test Problem021.solve() == 31626

