"""
# Problem 3
13195 の素因数は 5, 7, 13, 29 である.

600851475143 の素因数のうち最大のものを求めよ.
"""
module Problem003

    function solve()
        maximum(primefactors(600851475143))
    end

    function primefactors(x)
        F = []
        i = 2
        while x > 1
            if x % i == 0
                push!(F, i)
                x /= i
            else
                i += 1
            end
        end
        F
    end

end