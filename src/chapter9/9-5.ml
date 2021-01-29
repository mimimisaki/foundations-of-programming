(* int list の形
    - []
    - first :: rest *)

(* 目的：受け取った整数のリスト list から、偶数の要素のみを含むリストを返す *)
(* even : int list -> int list *)
let rec even lst = match lst with
    [] -> []
  | first :: rest -> if first mod 2 = 0 then first :: even rest
                                        else even rest

(* test *)
let test1 = even [] = []
let test2 = even [1] = []
let test3 = even [2; 1; 6; 4; 7] = [2; 6; 4]
