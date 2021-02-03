#use "chapter8/8-3.ml" ;;

(* person_t list 型のデータの例 *) 
let lst1 = [] 
let lst2 = [person1] 
let lst3 = [person2] 
let lst4 = [person1; person2; person3] 
let lst5 = [person2; person1; person1] 

(* 目的：受け取った person_t 型のリストから、各血液型の人が何人いるか組にして返す *)
(* ketsueki_shukei : person_t list -> int * int * int * int *)
let rec ketsueki_shukei lst = match lst with
    [] -> (0, 0, 0, 0)
  | { name = n; height = h; weight = w; month = m; day = d; blood = blood } :: rest
        -> let (a, b, o, ab) = ketsueki_shukei rest in
            if blood = "A" then (a + 1, b, o, ab)
            else if blood = "B" then (a, b + 1, o, ab)
            else if blood = "O" then (a, b, o + 1, ab)
            else (a, b, o, ab + 1)

(* テスト *) 
let test1 = ketsueki_shukei lst1 = (0, 0, 0, 0) 
let test2 = ketsueki_shukei lst2 = (1, 0, 0, 0) 
let test3 = ketsueki_shukei lst3 = (0, 1, 0, 0) 
let test4 = ketsueki_shukei lst4 = (1, 1, 1, 0) 
let test5 = ketsueki_shukei lst5 = (2, 1, 0, 0) 