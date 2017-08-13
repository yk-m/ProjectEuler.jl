using Base.Test
using ProjectEuler

println("Test Problem0018: ")
println("-- main")
@time @test Problem018.solve() == 1074
