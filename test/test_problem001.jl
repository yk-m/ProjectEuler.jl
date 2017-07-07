using Base.Test
using ProjectEuler

println("Test Problem001:")
println("-- main")
@test Problem001.solve() == 233168

println("-- sum_of_multiple")
@test sum(Problem001.get_multiple_iterator(3, 9)) == 18
@test sum(Problem001.get_multiple_iterator(5, 9)) == 5
