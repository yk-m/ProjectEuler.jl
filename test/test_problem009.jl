using Base.Test
using ProjectEuler

println("Test Problem009: ")
println("-- main")
@test Problem009.solve() == 31875000
