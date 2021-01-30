#use "chapter5/5-3.ml" ;;
#use "chapter8/8-3.ml" ;;

let lst1 = [] 
let lst2 = [person1] 
let lst3 = [person2] 
let lst4 = [person1; person2; person3] 
let lst5 = [person2; person1; person1] 

(* 目的：person_t 型のデータのリストを受け取ったら、乙女座の人の名前のみからなるリストを返す *)
(* otomeza : person_t list -> string list *)
let rec otomeza lst = match lst with
    [] -> []
  | { name = n; height = h; weight = w; month = m; day = d; blood = b } :: rest
       -> if seiza m d = "乙女座" then n :: otomeza rest
                                 else otomeza rest

(* テスト *) 
let test1 = otomeza lst1 = [] 
let test2 = otomeza lst2 = ["浅井"] 
let test3 = otomeza lst3 = [] 
let test4 = otomeza lst4 = ["浅井"] 
let test5 = otomeza lst5 = ["浅井"; "浅井"] 
