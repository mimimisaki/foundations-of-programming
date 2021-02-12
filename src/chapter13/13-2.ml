#use "chapter8/8-3.ml"

let lst = [person1; person2; person3]

(* 目的： person_t 型のリストを受け取ったら、人の名前のリストを返す *)
(* person_namae : person_t list -> string list *)
let rec person_name lst = match lst with
    [] -> []
  | {name = n; height = h; weight = w; month = m; day = d; blood = b} :: rest
        -> n :: person_name rest

(* テスト *) 
let test4 = person_name [] = [] 
let test5 = person_name lst = ["浅井"; "宮原"; "中村"] 