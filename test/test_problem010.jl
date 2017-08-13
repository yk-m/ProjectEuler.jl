using Base.Test
using ProjectEuler

println("Test Problem0010: ")
println("-- main")
@time @test Problem010.solve() == 142913828922

println("-- primes")
@time @test Problem010.primes(10) == [2, 3, 5, 7]
