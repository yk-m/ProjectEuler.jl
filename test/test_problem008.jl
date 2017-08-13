using Base.Test
using ProjectEuler

println("Test Problem008: ")
println("-- main")
@time @test Problem008.solve() == 23514624000

println("-- products_in_series")
@time @test Problem008.products_in_series([1,2,3,7,8,9], 5) == [336, 3024]
