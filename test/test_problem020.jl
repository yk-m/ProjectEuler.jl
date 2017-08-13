using Base.Test
using ProjectEuler

println("Test Problem0020: ")
println("-- main")
@time @test Problem020.solve() == 648
