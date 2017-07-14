"""
# Problem 10
10以下の素数の和は 2 + 3 + 5 + 7 = 17 である.

200万以下の全ての素数の和を求めよ.
"""
module Problem010

    function solve()
        sum(x for x in 2:2000000 if isprime(x))
    end

    function isprime(n)
        for k in 2:sqrt(n)
            if n % k == 0
                return false
            end
        end
        return true
    end

end
