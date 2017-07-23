"""
# Problem 16
2^15 = 32768 であり, 各位の数字の和は 3 + 2 + 7 + 6 + 8 = 26 となる.
同様にして, 2^1000 の各位の数字の和を求めよ.
"""
module Problem016

    function solve()
        str = "$(BigInt(2)^1000)"
        digitsum(str)
    end

    function digitsum(str)
        reduce((sum, x) -> sum + parse(Int, x), 0, str)
    end

end
