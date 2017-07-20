using Base.Test
using ProjectEuler

println("Test Problem0015: ")
println("-- main")
@test Problem015.solve() == 137846528820

println("-- lattice_paths")
@test Problem015.lattice_paths(2, 2) == 6

println("-- conbination")
@test Problem015.conbination(50, 20) == 47129212243960
