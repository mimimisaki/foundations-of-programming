(* 目的：鶴の数 tsuru と亀の数 kame に応じた足の本数を計算する *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi tsuru kame = tsuru * 2 + kame * 4

(* テスト *)
let test1 = tsurukame_no_ashi 0 0 = 0
let test2 = tsurukame_no_ashi 1 2 = 10
let test3 = tsurukame_no_ashi 5 3 = 22
