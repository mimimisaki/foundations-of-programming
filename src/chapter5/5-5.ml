#use "chapter5/5-4.ml"

(* 目的：二次方程式の係数 a, b, c から解の個数を返す *)
(* kai_no_kosuu : float -> float -> float -> int *)
let kai_no_kosuu a b c =
    if hanbetsushiki a b c < 0. then 0
                               else if hanbetsushiki a b c = 0. then 1
                               else 2

(* テスト *)
let test1 = kai_no_kosuu 1. 5. 4. = 2
let test2 = kai_no_kosuu 2. (-4.) 2. = 1
let test3 = kai_no_kosuu 1. 2. 4. = 0
