using Base.Test
using ProjectEuler

println("Test Problem0024: ")
println("-- main")
@time @test Problem024.solve() == "2783915460"

