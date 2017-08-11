# Ploblem012
プログラム読めなくなりそうなのでメモ

## 前提知識
### 三角数の公式
<img src="https://latex.codecogs.com/svg.latex?T_n&space;=&space;\frac{n(n&plus;1)}{2}" title="T_n = \frac{n(n+1)}{2}" />   

参考：[三角数とは，三角数定理，平方数との関係](http://mathtrain.jp/sankakusu)

### 約数の個数の公式
正の整数nが

<img src="https://latex.codecogs.com/svg.latex?n&space;=&space;p_1^{a_1}&space;p_2^{a_2}&space;...&space;p_k^{a_k}" title="n = p_1^{a_1} p_2^{a_2} ... p_k^{a_k}" />

と素因数分解できるとき、nの約数の個数を<img src="https://latex.codecogs.com/svg.latex?\inline&space;d(n)" title="d(n)" />とすると

<img src="https://latex.codecogs.com/svg.latex?d(n)&space;=&space;(a_1&plus;1)(a_2&plus;1)&space;...&space;(a_k&plus;1)" title="d(n) = (a_1+1)(a_2+1) ... (a_k+1)" />

と表せる。

参考：[約数の個数の公式と平方数の性質](http://mathtrain.jp/numberofd)

### 連続する2整数は互いに素
互いに素：1以外の公約数を持たない

例えば、2つの整数が2の倍数なら、その差は2の倍数になる。   
同様に、2つの整数がnの倍数なら、その差はnの倍数になる。   

連続する2整数の差は1なので、1以外の公約数は持たない。

## 三角数の約数の個数
正の整数n、n+1が

<img src="https://latex.codecogs.com/svg.latex?n&space;=&space;p_1^{a_1}&space;p_2^{a_2}&space;...&space;p_k^{a_k}" title="n = p_1^{a_1} p_2^{a_2} ... p_k^{a_k}" />   
<img src="https://latex.codecogs.com/svg.latex?n&plus;1&space;=&space;q_1^{b_1}&space;q_2^{b_2}&space;...&space;q_k^{b_k}" title="n+1 = q_1^{b_1} q_2^{b_2} ... q_k^{b_k}" />

と素因数分解できるとき、n、n+1は互いに素なのでn(n+1)は

<img src="https://latex.codecogs.com/svg.latex?\inline&space;n(n&plus;1)&space;=&space;p_1^{a_1}&space;p_2^{a_2}&space;...&space;p_k^{a_k}&space;q_1^{b_1}&space;q_2^{b_2}&space;...&space;q_k^{b_k}" title="n(n+1) = p_1^{a_1} p_2^{a_2} ... p_k^{a_k} q_1^{b_1} q_2^{b_2} ... q_k^{b_k}" />

と素因数分解できる。よって、n(n+1)の約数の個数は

<img src="https://latex.codecogs.com/svg.latex?d(n(n&plus;1))&space;=&space;(a_1&plus;1)(a_2&plus;1)...(a_k&plus;1)(b_1&plus;1)(b_2&plus;1)...(b_k&plus;1)&space;=&space;d(n)d(n&plus;1)" title="d(n(n+1)) = (a_1+1)(a_2+1)...(a_k+1)(b_1+1)(b_2+1)...(b_k+1) = d(n)d(n+1)" />

と表すことができる。

以上より、偶数番目の三角数の約数の個数は

<img src="https://latex.codecogs.com/svg.latex?d\left&space;(&space;\frac{n(n&plus;1)}{2}&space;\right&space;)&space;=&space;d\left&space;(&space;\frac{n}{2}&space;\right&space;)d\left&space;(&space;n&plus;1&space;\right&space;)" title="d\left ( \frac{n(n+1)}{2} \right ) = d\left ( \frac{n}{2} \right )d\left ( n+1 \right )" />

奇数番目の三角数の約数の個数は

<img src="https://latex.codecogs.com/svg.latex?d\left&space;(&space;\frac{n\left&space;(&space;n&plus;1&space;\right&space;)}{2}&space;\right&space;)&space;=&space;d\left&space;(&space;n&space;\right&space;)&space;d\left&space;(&space;\frac{n&plus;1}{2}&space;\right&space;)" title="d\left ( \frac{n\left ( n+1 \right )}{2} \right ) = d\left ( n \right ) d\left ( \frac{n+1}{2} \right )" />

とそれぞれ表せる