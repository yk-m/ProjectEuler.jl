"""
# Problem 4
左右どちらから読んでも同じ値になる数を回文数という. 2桁の数の積で表される回文数のうち, 最大のものは 9009 = 91 × 99 である.

では, 3桁の数の積で表される回文数の最大値を求めよ.
"""
module Problem004

    ispalindrome(x) = string(x) == reverse(string(x))

    function solve()
        maximum(filter(ispalindrome, unique([x * y for x = 100:999, y = 100:999])))
    end

end