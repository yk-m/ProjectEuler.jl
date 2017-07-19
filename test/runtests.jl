using Base.Test

for i in 1:14
    include("test_problem$(@sprintf("%03d", i)).jl")
end