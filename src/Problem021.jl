"""
# Problem 21
d(n) を n の真の約数の和と定義する. (真の約数とは n 以外の約数のことである. )
もし, d(a) = b かつ d(b) = a (a ≠ b のとき) を満たすとき, a と b は友愛数(親和数)であるという.

例えば, 220 の約数は 1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110 なので d(220) = 284 である.
また, 284 の約数は 1, 2, 4, 71, 142 なので d(284) = 220 である.

それでは10000未満の友愛数の和を求めよ.
"""
module Problem021

    function solve()
        sum = 0
        for a in 1:9999, b in a+1:9999
            if !is_amicablenumbers(a, b)
                continue
            end
            @show a, b
            sum += a + b
        end
        return sum
    end

    function is_amicablenumbers(a, b)
        if a == b
            return false
        end
        if d(a) != b
            return false
        end
        if d(b) != a
            return false
        end
        return true
    end

    d(n) = sum(proper_divisors(n))

    function proper_divisors(n)
        x, max = 1, n
        divisors = [x]
        while x + 1 < max
            x += 1
            if n % x != 0
                continue
            end
            max = n ÷ x
            push!(divisors, x, max)
        end
        return divisors
    end

end
