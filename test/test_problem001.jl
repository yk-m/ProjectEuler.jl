using Base.Test
using Problem001

print("Test Problem001: ")
print("-- main")
@test Problem001.solve() == 233168

print("-- sum_of_multiple")
@test Problem001.sum_of_multiple(3, 9) == 18
@test Problem001.sum_of_multiple(5, 9) == 5
