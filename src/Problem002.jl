"""
# Problem 2
フィボナッチ数列の項は前の2つの項の和である. 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
数列の項の値が400万以下の, 偶数値の項の総和を求めよ.
"""
module Problem002

    function solve()
        sum(filter(iseven, fibonacci(4000000)))
    end

    function fibonacci(n)
        F = []
        a, b = 1, 2
        while a ≤ n
            push!(F, a)
            a, b = b, a + b
        end
        F
    end

end