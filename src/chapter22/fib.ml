(* 目的：フィボナッチ数を再帰回数とともに求める *)
(* fib : int -> int -> (int * int) *)
let rec fib n c =
    let c0 = c + 1 in
    if n < 2 then (n, c0)
             else let (r1, c1) = fib (n - 1) c0 in
             let (r2, c2) = fib (n - 2) c1 in
             (r1 + r2, c2)

(* test *)
let test = fib 8 0 = (21, 67)
