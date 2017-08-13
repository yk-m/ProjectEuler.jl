"""
# Problem 22
5000個以上の名前が書かれている46Kのテキストファイル filenames.txt を用いる. まずアルファベット順にソートせよ.
のち, 各名前についてアルファベットに値を割り振り, リスト中の出現順の数と掛け合わせることで, 名前のスコアを計算する.
たとえば, リストがアルファベット順にソートされているとすると, COLINはリストの938番目にある. またCOLINは 3 + 15 + 12 + 9 + 14 = 53 という値を持つ. よってCOLINは 938 × 53 = 49714 というスコアを持つ.
ファイル中の全名前のスコアの合計を求めよ.
"""
module Problem022

    function solve()
        respath = joinpath(@__DIR__, "..", "res")
        names = vec(readcsv(joinpath(respath, "names.txt"), String))
        sort!(names)
        sum([namescore(name) * index for (index, name) = enumerate(names)])
    end

    namescore(name) = sum([tonum(char) for char in name])

    function tonum(char::Char)
        Int(char) - Int('A') + 1
    end

    function read(filename)
        lines = []
        @show @__DIR__
        open("$(@__DIR__)/$(filename)") do f
            lines = readlines(f)
        end
        return lines
    end

    function formatcsv(lines)
        return [split(replace(line, "\"", ""), ",") for line in lines]
    end

end
