using Base.Test
using ProjectEuler

println("Test Problem0017: ")
println("-- main")
@test Problem017.solve() == 21124
