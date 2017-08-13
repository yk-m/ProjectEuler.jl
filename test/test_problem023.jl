using Base.Test
using ProjectEuler

println("Test Problem0023: ")
println("-- main")
@time @test Problem023.solve() == 4179871

