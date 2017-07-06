"""
# Problem 1
10未満の自然数のうち, 3 もしくは 5 の倍数になっているものは 3, 5, 6, 9 の4つがあり, これらの合計は 23 になる.
同じようにして, 1000 未満の 3 か 5 の倍数になっている数字の合計を求めよ.
"""
module Problem001

    function solve()
        sum_of_multiple(3, 999) + sum_of_multiple(5, 999) - sum_of_multiple(15, 999)
    end

    function sum_of_multiple(n, max)
        sum = 0
        for x in n:n:max
            sum += x
        end
        sum
    end

end