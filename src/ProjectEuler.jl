module ProjectEuler
    export Problem001, Problem002, Problem003, Problem004, Problem005, Problem006

    for i in 1:6
        include("Problem$(@sprintf("%03d", i)).jl")
    end
end