using Base.Test
using ProjectEuler

println("Test Problem001:")
println("-- main")
@time @test Problem001.solve() == 233168
