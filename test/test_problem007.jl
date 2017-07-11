using Base.Test
using ProjectEuler

println("Test Problem007: ")
println("-- main")
@test Problem007.solve() == 104743

println("-- nthprime")
@test Problem007.nthprime(3) == 5
@test Problem007.nthprime(11) == 31

println("-- isprime")
@test Problem007.isprime(65537) == true
@test Problem007.isprime(3456) == false
