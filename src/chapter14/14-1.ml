(* 目的：受け取った整数が偶数かどうか判定する *)
(* even : int -> bool *)
let is_even n = n mod 2 = 0

(* 目的：受け取ったリストの中から偶数のみを抜き出したリストを返す *)
let even lst = List.filter is_even lst

(* テスト *) 
let test1 = even [] = [] 
let test2 = even [3] = [] 
let test3 = even [2] = [2] 
let test4 = even [2; 1; 6; 4; 7] = [2; 6; 4] 
let test5 = even [1; 2; 6; 4; 7] = [2; 6; 4] 
