#use "chapter10/10-1.ml" ;;

(* 目的：受け取った整数のリスト lst を昇順に整列したリストとして返す *)
(* ins_sort : int list -> int list *)
let rec ins_sort lst = match lst with
    [] -> []
  | first :: rest -> insert (ins_sort rest) first

(* test *)
let test1 = ins_sort [] = [] 
let test2 = ins_sort [1] = [1] 
let test3 = ins_sort [3; 1] = [1; 3] 
let test4 = ins_sort [1; 3] = [1; 3] 
let test5 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
