#use "chapter5/5-4.ml"

(* 目的：二次方程式の係数 a, b, c から虚数解を持つかを判定する *)
(* kyosuukai : float -> float -> float -> bool *)
let kyosuukai a b c =
    hanbetsushiki a b c < 0.

(* テスト *)
let test1 = kyosuukai 1. 5. 4. = false
let test2 = kyosuukai 2. (-4.) 2. = false
let test3 = kyosuukai 1. 2. 4. = true
