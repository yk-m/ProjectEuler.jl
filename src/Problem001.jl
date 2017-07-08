"""
# Problem 1
10未満の自然数のうち, 3 もしくは 5 の倍数になっているものは 3, 5, 6, 9 の4つがあり, これらの合計は 23 になる.
同じようにして, 1000 未満の 3 か 5 の倍数になっている数字の合計を求めよ.
"""
module Problem001

    function solve()
        sum([x for x in 3:3:999]) + sum([x for x in 5:5:999]) - sum([x for x in 15:15:999])
    end

end