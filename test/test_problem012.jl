using Base.Test
using ProjectEuler

println("Test Problem0012: ")
println("-- main")
@time @test Problem012.solve() == 76576500

println("-- findtriangular")
@time @test Problem012.findtriangular(5) == 7

println("-- numofdivisors")
@time @test Problem012.numofdivisors(1) == 1
@time @test Problem012.numofdivisors(3) == 2
@time @test Problem012.numofdivisors(6) == 4
@time @test Problem012.numofdivisors(10) == 4
@time @test Problem012.numofdivisors(15) == 4
@time @test Problem012.numofdivisors(21) == 4
@time @test Problem012.numofdivisors(28) == 6
