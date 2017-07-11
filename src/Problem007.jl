"""
# Problem 7
素数を小さい方から6つ並べると 2, 3, 5, 7, 11, 13 であり, 6番目の素数は 13 である.

10 001 番目の素数を求めよ.
"""
module Problem007

    function solve()
        nthprime(10001)
    end

    function nthprime(n)
        nth, x = 0, 2
        while true
            if isprime(x)
                nth += 1
            end
            if nth == n
                return x
            end
            x += 1
        end
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
