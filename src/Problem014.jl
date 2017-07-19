"""
# Problem 14
正の整数に以下の式で繰り返し生成する数列を定義する.
    n → n/2 (n が偶数)
    n → 3n + 1 (n が奇数)
13からはじめるとこの数列は以下のようになる.
    13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
13から1まで10個の項になる. この数列はどのような数字からはじめても最終的には 1 になると考えられているが, まだそのことは証明されていない(コラッツ問題)

さて, 100万未満の数字の中でどの数字からはじめれば最長の数列を生成するか.

注意: 数列の途中で100万以上になってもよい
"""
module Problem014

    function solve()
        find_max_collatz_length(1000000)
    end

    f_even(n) = n÷2
    f_odd(n) = 3n + 1

    function find_max_collatz_length(n)
        lengths = zeros(Int, n)
        lengths[1] = 1
        for x in 2:n
            collatz_length!(lengths, x)
        end
        return indmax(lengths)
    end

    function collatz_length!(known_length, n)
        progression = [n]
        nmax = length(known_length)
        while n > 1 && (n > nmax || known_length[n] == 0)
            if iseven(n)
                n = f_even(n)
            else
                n = f_odd(n)
            end
            push!(progression, n)
        end

        while (len = length(progression)) != 0
            x = shift!(progression)
            x ≤ nmax || continue
            known_length[x] = known_length[n] + len
        end
    end

end
