(* 目的：与えられた整数 a, b, c, d, e ５教科の点数から、合計点と平均点を算出して組にして返す *)
(* goukei_to_heikin : int -> int -> int -> int -> int -> int * int *)
let goukei_to_heikin a b c d e =
    (a + b + c + d + e,
    (a + b + c + d + e) / 5)

(* テスト *)
let test1 = goukei_to_heikin 80 100 90 85 75 = (430, 86)
let test2 = goukei_to_heikin 90 70 95 65 90 = (410, 82)
let test3 = goukei_to_heikin 60 50 70 55 65 = (300, 60)