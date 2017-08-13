"""
# Problem 24
順列とはモノの順番付きの並びのことである. たとえば, 3124は数 1, 2, 3, 4 の一つの順列である. すべての順列を数の大小でまたは辞書式に並べたものを辞書順と呼ぶ. 0と1と2の順列を辞書順に並べると
    012 021 102 120 201 210
になる.
0,1,2,3,4,5,6,7,8,9からなる順列を辞書式に並べたときの100万番目はいくつか?
"""
module Problem024

    function solve()
        n = 1000000 - 1
        nums = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        indices = map(9:-1:0) do x
            f = factorial(x)
            index = n ÷ f + 1
            n %= f
            return index
        end
        digits = map(indices) do index
            splice!(nums, index)
        end
        return join(digits)
    end

end
