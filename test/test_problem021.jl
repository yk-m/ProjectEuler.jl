using Base.Test
using ProjectEuler

println("Test Problem0021: ")
println("-- main")
@test Problem021.solve() == 31626

println("-- is_amicablenumbers")
@test Problem021.is_amicablenumbers(220, 284) == true
