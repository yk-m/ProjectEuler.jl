using Base.Test
using ProjectEuler

println("Test Problem0020: ")
println("-- main")
@test Problem020.solve() == 648
