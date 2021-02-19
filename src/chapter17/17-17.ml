(* 目的：受け取った整数とリストの中の最小値を返す *) 
(* minimum2 : int -> int list -> int *) 
let rec minimum2 first_num rest_num = match rest_num with
    [] -> first_num
  | first :: rest
      -> let rest_min = minimum2 first rest in
         if first_num <= rest_min then first_num
         else rest_min

(* 目的：受け取った整数のリストの中の最小値を返す *)
(* minimum : int list -> int *)
let minimum lst = match lst with
    [] -> max_int
  | first :: rest -> minimum2 first rest

(* テスト *) 
let test1 = minimum [3] = 3 
let test2 = minimum [1; 2] = 1 
let test3 = minimum [3; 2] = 2 
let test4 = minimum [3; 2; 6; 4; 1; 8] = 1 