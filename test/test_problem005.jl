using Base.Test
using ProjectEuler

println("Test Problem005: ")
println("-- main")
@test Problem005.solve() == 232792560
