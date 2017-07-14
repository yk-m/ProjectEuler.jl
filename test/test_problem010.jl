using Base.Test
using ProjectEuler

println("Test Problem0010: ")
println("-- main")
@test Problem010.solve() == 142913828922
