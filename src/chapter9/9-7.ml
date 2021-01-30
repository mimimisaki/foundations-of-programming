#use "chapter8/8-3.ml"

let lst1 = []
let lst2 = [person1]
let lst3 = [person2]
let lst4 = [person1; person2; person3] 
let lst5 = [person2; person1; person1] 

(* 目的：person_t 型のデータのリストを受け取ったら、血液型がA型の人の数を返す *)
(* count_ketsueki_A : person_t list -> int *)
let rec count_ketsueki_A lst = match lst with
    [] -> 0
  | {name = n; height = h; weight = w; month = m; day = d; blood = b} :: rest
       -> if b = "A" then 1 + count_ketsueki_A rest
                     else count_ketsueki_A rest

(* test *)
let test1 = count_ketsueki_A lst1 = 0 
let test2 = count_ketsueki_A lst2 = 1 
let test3 = count_ketsueki_A lst3 = 0 
let test4 = count_ketsueki_A lst4 = 1 
let test5 = count_ketsueki_A lst5 = 2
