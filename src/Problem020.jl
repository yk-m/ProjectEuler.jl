"""
# Problem 20
n × (n - 1) × ... × 3 × 2 × 1 を n! と表す.

例えば, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800 となる.
この数の各桁の合計は 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27 である.

では, 100! の各位の数字の和を求めよ.

注: Problem 16 も各位の数字の和に関する問題です。解いていない方は解いてみてください。
"""
module Problem020

    function solve()
        str = "$(factorial(BigInt(100)))"
        digitsum(str)
    end

    function digitsum(str)
        reduce((sum, x) -> sum + parse(Int, x), 0, str)
    end

end
