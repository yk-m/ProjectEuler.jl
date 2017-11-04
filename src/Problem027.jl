"""
# Problem 27
オイラーは以下の二次式を考案している:
    n^2 + n + 41.
この式は, n を0から39までの連続する整数としたときに40個の素数を生成する. しかし, n = 40 のとき 40^2 + 40 + 41 = 40(40 + 1) + 41 となり41で割り切れる.
また, n = 41 のときは 41^2 + 41 + 41 であり明らかに41で割り切れる.

計算機を用いて, 二次式 n^2 - 79n + 1601 という式が発見できた. これは n = 0 から 79 の連続する整数で80個の素数を生成する. 係数の積は, -79 × 1601 で -126479である.

さて, |a| < 1000, |b| ≤ 1000 として以下の二次式を考える (ここで |a| は絶対値): 例えば |11| = 11 |-4| = 4である.
    n^2 + an + b
n = 0 から始めて連続する整数で素数を生成したときに最長の長さとなる上の二次式の, 係数 a, b の積を答えよ.
"""
module Problem027

    function solve()
        max_num_of_primes = 0
        product_of_coefficient = 0

        for a in -999:999, b in 2:999
            num_of_primes = count_primes_produced_by((n) -> n^2 + a*n + b)
            if max_num_of_primes < num_of_primes
                max_num_of_primes = num_of_primes
                product_of_coefficient = a * b
            end
        end
        return product_of_coefficient
    end

    function count_primes_produced_by(formula::Function)
        n = 0
        while isprime(formula(n))
            n += 1
        end
        return n
    end

    function isprime(n)
        if n < 2
            return false
        end
        for k in 2:sqrt(n)
            if n % k == 0
                return false
            end
        end
        return true
    end

end
