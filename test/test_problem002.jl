using Base.Test
using ProjectEuler

println("Test Problem002: ")
println("-- main")
@test Problem002.solve() == 4613732

println("-- fibonacci")
@test Problem002.fibonacci(89) == [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
