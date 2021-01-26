(* 目的：二次方程式の係数 a, b, c から判別式を返す *)
(* a != 0 *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = b *. b -. 4. *. a *. c

(* テスト *)
let test1 = hanbetsushiki 1. 1. 1. = -3.
let test2 = hanbetsushiki 2. (-4.) 2. = 0.
let test3 = hanbetsushiki 1. 2. 4. = -12.
