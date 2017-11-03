"""
# Problem 26
単位分数とは分子が1の分数である. 分母が2から10の単位分数を10進数で表記すると次のようになる.
    1/2 = 0.5
    1/3 = 0.(3)
    1/4 = 0.25
    1/5 = 0.2
    1/6 = 0.1(6)
    1/7 = 0.(142857)
    1/8 = 0.125
    1/9 = 0.(1)
    1/10 = 0.1
0.1(6)は 0.166666... という数字であり, 1桁の循環節を持つ. 1/7 の循環節は6桁ある.
d < 1000 なる 1/d の中で小数部の循環節が最も長くなるような d を求めよ.
"""
module Problem026

    function solve()
        lenlist = []
        for i in 1:999
            push!(lenlist, recurringcycle_len(i))
        end
        return indmax(lenlist)
    end

    function recurringcycle_len(d)
        while d % 2 == 0
            d ÷= 2
        end
        while d % 5 == 0
            d ÷= 5
        end
        if d == 1
            return 0
        end
        len = 1
        while powermod(10, len, d) != 1
            len += 1
        end
        return len
    end

end
