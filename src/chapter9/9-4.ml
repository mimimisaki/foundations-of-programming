(* int list は
    - []           空リスト、あるいは
    - first ::rest 最初の要素が first で残りのリストが rest
という形 *)

(* 目的：受け取ったリスト list の長さを返す *)
(* length : int list -> int *)
let rec length lst = match lst with
    [] -> 0
  | first :: rest -> 1 + length rest

(* test *)
let test1 = length [] = 0
let test2 = length [1] = 1
let test3 = length [1; 2; 3] = 3
let test4 = length [2; 1; 6; 4; 7] = 5