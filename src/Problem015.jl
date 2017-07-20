"""
# Problem 15
2×2 のマス目の左上からスタートした場合, 引き返しなしで右下にいくルートは 6 つある.

p_15.gif
では, 20×20 のマス目ではいくつのルートがあるか.
"""
module Problem015

    function solve()
        lattice_paths(20, 20)
    end

    function lattice_paths(row, col)
        conbination(row+col, col)
    end

    function conbination(n, r)
        r != 0 || return 1
        ((n-r+1) * conbination(n, r-1)) ÷ r
    end

end
