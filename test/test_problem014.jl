using Base.Test
using ProjectEuler

println("Test Problem0014: ")
println("-- main")
@test Problem014.solve() == 837799
