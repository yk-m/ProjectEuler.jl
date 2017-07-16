module ProjectEuler
    export Problem001, Problem002, Problem003, Problem004, Problem005
    export Problem006, Problem007, Problem008, Problem009, Problem010
    export Problem011

    for i in 1:11
        include("Problem$(@sprintf("%03d", i)).jl")
    end
end