using Base.Test
using ProjectEuler

println("Test Problem003: ")
println("-- main")
@test Problem003.solve() == 6857

println("-- primefactors")
@test Problem003.primefactors(3) == [3]
@test Problem003.primefactors(12) == [2, 2, 3]
