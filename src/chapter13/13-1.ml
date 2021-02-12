#use "chapter8/8-3.ml"

let lst = [person1; person2; person3]

(* 目的： person_t 型のリストを受け取ったら、指定された血液型の人数を返す *)
(* count_ketsueki : person_t list -> string -> int *)
let rec count_ketsueki lst bloodType = match lst with
    [] -> 0
  | {name = n; height = h; weight = w; month = m; day = d; blood = b} :: rest
        -> if b = bloodType then 1 + count_ketsueki rest bloodType
                            else count_ketsueki rest bloodType


(* テスト *) 
let test1 = count_ketsueki [] "A" = 0 
let test2 = count_ketsueki lst "A" = 1 
let test3 = count_ketsueki lst "O" = 1 
let test4 = count_ketsueki lst "B" = 1 
let test5 = count_ketsueki lst "AB" = 0 