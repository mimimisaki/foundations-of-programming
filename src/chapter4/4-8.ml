(* 目的：鶴と亀の数の合計 sum と足の数の合計 ashi に応じた足の本数を計算する *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame sum ashi = (sum * 4 - ashi) / 2

(* テスト *)
let test1 = tsurukame 0 0 = 0
let test2 = tsurukame 5 12 = 4
let test3 = tsurukame 12 34 = 7
