(* 目的：鶴の数 x に応じた足の本数を計算する *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi x = x * 2

(* テスト *)
let test1 = tsuru_no_ashi 2 = 4
let test2 = tsuru_no_ashi 8 = 16
let test3 = tsuru_no_ashi 100 = 200
