"""
# Problem 10
10以下の素数の和は 2 + 3 + 5 + 7 = 17 である.

200万以下の全ての素数の和を求めよ.
"""
module Problem010

    function solve()
        sum(primes(2000000))
    end

    function primes(n)
        P = trues(n)
        P[1] = false
        for i in 1:isqrt(n)
            P[i] || continue
            for j in i+i:i:n
                P[j] = false
            end
        end
        find(P)
    end

end
