"""
# Problem 19
次の情報が与えられている.

1900年1月1日は月曜日である.
9月, 4月, 6月, 11月は30日まであり, 2月を除く他の月は31日まである.
2月は28日まであるが, うるう年のときは29日である.
うるう年は西暦が4で割り切れる年に起こる. しかし, 西暦が400で割り切れず100で割り切れる年はうるう年でない.
20世紀（1901年1月1日から2000年12月31日）中に月の初めが日曜日になるのは何回あるか?
"""
module Problem019

    function solve()
        target = 0
        serialday = 1

        for year in 1900:2000, month in 1:12
            if year ≥ 1901 && issunday(serialday)
                target += 1
            end
            serialday += nextmonthdaycount(year, month)
        end

        return target
    end

    function issunday(serialday)
        return serialday % 7 == 0
    end

    function nextmonthdaycount(year, month)
        if month == 2
            return isleapyear(year) ? 29 : 28
        end
        if month in [4, 6, 9, 11]
            return 30
        end
        return 31
    end

    function isleapyear(year)
        if year % 400 != 0 && year % 100 == 0
            return false
        end
        if year % 4 == 0
            return true
        end
        return false
    end

end
