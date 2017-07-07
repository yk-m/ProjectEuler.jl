"""
# Problem 2
フィボナッチ数列の項は前の2つの項の和である. 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
数列の項の値が400万以下の, 偶数値の項の総和を求めよ.
"""
module Problem002

    function solve()
        fibs = get_fibonacci_list(4000000)
        sum([fibs[x] for x in 2:3:length(fibs)])
    end

    function get_fibonacci_list(max)
        fibs = []
        for x in Task(fibonacci)
            if x > max
                return fibs
            end
            push!(fibs, x)
        end
    end

    function fibonacci()
        a, b = 1, 2
        while true
            produce(a)
            a, b = b, a + b
        end
    end

end