module ProjectEuler
    export Problem001, Problem002, Problem003, Problem004

    for i in 1:4
        include("Problem$(@sprintf("%03d", i)).jl")
    end
end