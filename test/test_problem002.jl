using Base.Test
using ProjectEuler

print("Test Problem002: ")
print("-- main")
@test Problem002.solve() == 4613732

print("-- get_fibonacci_list")
@test get_fibonacci_list(89) == [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
