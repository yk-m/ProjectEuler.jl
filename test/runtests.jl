using Base.Test

for i in 1:22
    include("test_problem$(@sprintf("%03d", i)).jl")
end