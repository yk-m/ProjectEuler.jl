using Base.Test
using ProjectEuler

println("Test Problem0013: ")
println("-- main")
@time @test Problem013.solve() == 5537376230
