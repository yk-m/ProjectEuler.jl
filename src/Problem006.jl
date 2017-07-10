"""
# Problem 6
最初の10個の自然数について, その二乗の和は,
    1^2 + 2^2 + ... + 10^2 = 385
最初の10個の自然数について, その和の二乗は,
    (1 + 2 + ... + 10)^2 = 3025
これらの数の差は 3025 - 385 = 2640 となる.
同様にして, 最初の100個の自然数について二乗の和と和の二乗の差を求めよ.
"""
module Problem006

    function solve()
        squareofsum(100) - sumofsquares(100)
    end

    sumofsquares(n) = (2n+1)*(n+1)n / 6
    squareofsum(n) = ((n+1)n / 2)^2

end
