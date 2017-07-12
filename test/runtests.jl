using Base.Test

for i in 1:8
    include("test_problem$(@sprintf("%03d", i)).jl")
end