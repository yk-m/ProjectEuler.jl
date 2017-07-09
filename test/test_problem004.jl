using Base.Test
using ProjectEuler

println("Test Problem004: ")
println("-- main")
@test Problem004.solve() == 906609
