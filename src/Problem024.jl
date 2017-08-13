"""
# Problem 24
順列とはモノの順番付きの並びのことである. たとえば, 3124は数 1, 2, 3, 4 の一つの順列である. すべての順列を数の大小でまたは辞書式に並べたものを辞書順と呼ぶ. 0と1と2の順列を辞書順に並べると
    012 021 102 120 201 210
になる.
0,1,2,3,4,5,6,7,8,9からなる順列を辞書式に並べたときの100万番目はいくつか?
"""
module Problem024

    function solve()
        P = permutations(collect(0:9))
        return reduce((x,y) -> "$(x)$(y)", string.(P[1000000]))
    end

    function permutations(L)
        if L == []
            return [[]]
        end
        return [append!([l], child) for (i, l) in enumerate(L)
                                    for child in permutations(append!(L[1:i-1], L[i+1:end]))]
    end

end
