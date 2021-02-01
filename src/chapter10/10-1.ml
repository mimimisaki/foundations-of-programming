(* 目的：昇順の整数リスト lst と整数 n を受け取ったら、昇順となるように lst に n を挿入したリストを返す *)
(* insert : int list -> int -> int list *)
let rec insert lst n = match lst with
    [] -> [n]
  | first :: rest -> if first < n then first :: insert rest n
                                  else n :: lst

(* test *)
let test1 = insert [] 3 = [3]
let test2 = insert [1] 3 = [1; 3] 
let test3 = insert [3] 1 = [1; 3] 
let test4 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8] 