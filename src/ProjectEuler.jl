module ProjectEuler
    export Problem001, Problem002, Problem003, Problem004, Problem005, Problem006, Problem007, Problem008, Problem009, Problem010

    for i in 1:10
        include("Problem$(@sprintf("%03d", i)).jl")
    end
end