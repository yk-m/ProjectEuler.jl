"""
# Problem 23
完全数とは, その数の真の約数の和がそれ自身と一致する数のことである. たとえば, 28の真の約数の和は, 1 + 2 + 4 + 7 + 14 = 28 であるので, 28は完全数である.
真の約数の和がその数よりも少ないものを不足数といい, 真の約数の和がその数よりも大きいものを過剰数と呼ぶ.
12は, 1 + 2 + 3 + 4 + 6 = 16 となるので, 最小の過剰数である. よって2つの過剰数の和で書ける最少の数は24である. 数学的な解析により, 28123より大きい任意の整数は2つの過剰数の和で書けることが知られている. 2つの過剰数の和で表せない最大の数がこの上限よりも小さいことは分かっているのだが, この上限を減らすことが出来ていない.
2つの過剰数の和で書き表せない正の整数の総和を求めよ.
"""
module Problem023

    function solve()
        sum(x for x in 1:28123 if !is_abundant_sum(x))
    end

    function __init__()
        global const abundants = IntSet(x for x in 1:28123 if is_abundant(x))
    end

    function is_abundant_sum(n)
        for x in abundants
            if x > n
                return false
            end
            if (n - x) in abundants
                return true
            end
        end
        return false
    end

    sum_of_proper_divisors(n) = try sum(proper_divisors(n)) catch; 0 end
    is_abundant(n) = n < sum_of_proper_divisors(n)

    function proper_divisors(n)
        if n ≤ 1
            return []
        end
        x, max = 1, n
        divisors = [x]
        while x + 1 < max
            x += 1
            if n % x != 0
                continue
            end
            max = n ÷ x
            push!(divisors, x)
            if max != x
                push!(divisors, max)
            end
        end
        return divisors
    end

end
