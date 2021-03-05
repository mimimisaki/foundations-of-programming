let count = ref 0

let rec fib2 n =
    (count := !count + 1;
    if n < 2 then n
             else fib2 (n - 1) + fib2 (n - 2))

(* test *)
let test = fib2 8 = 21