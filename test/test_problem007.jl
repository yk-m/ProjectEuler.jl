using Base.Test
using ProjectEuler

println("Test Problem007: ")
println("-- main")
@time @test Problem007.solve() == 104743

println("-- nthprime")
@time @test Problem007.nthprime(3) == 5
@time @test Problem007.nthprime(11) == 31

println("-- isprime")
@time @test Problem007.isprime(65537) == true
@time @test Problem007.isprime(3456) == false
