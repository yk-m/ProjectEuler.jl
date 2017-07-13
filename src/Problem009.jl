"""
# Problem 9
ピタゴラス数(ピタゴラスの定理を満たす自然数)とは a < b < c で以下の式を満たす数の組である.
    a^2 + b^2 = c^2
例えば, 3^2 + 4^2 = 9 + 16 = 25 = 5^2 である.

a + b + c = 1000 となるピタゴラスの三つ組が一つだけ存在する.
これらの積 abc を計算しなさい.
"""
module Problem009

    function solve()
        *(special_pythagorean_triplet(1000)...)
    end

    function special_pythagorean_triplet(n)
        for a in 1:n, b in a+1:n, c in b+1:n
            if !are_sum_thousand(a, b, c)
                continue
            end
            if !are_pythagorean_triplet(a, b, c)
                continue
            end
            return (a, b, c)
        end
    end

    are_pythagorean_triplet(a, b, c) = a^2 + b^2 == c^2
    are_sum_thousand(a, b, c) = a + b + c == 1000

end
