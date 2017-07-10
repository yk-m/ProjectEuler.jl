using Base.Test
using ProjectEuler

println("Test Problem006: ")
println("-- main")
@test Problem006.solve() == 25164150
