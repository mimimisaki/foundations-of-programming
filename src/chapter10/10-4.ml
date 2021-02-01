#use "chapter8/8-3.ml" ;;

(* person_t 型のリストの例 *) 
let lst1 = [] 
let lst2 = [person1] 
let lst3 = [person1; person2] 
let lst4 = [person2; person1] 
let lst5 = [person3; person1; person2] 

(* 目的：名前の順に整列した person_t 型のリストの正しい位置に person_t 型の person0 を挿入する *)
(* person_insert : person_t list -> person_t person0 -> person_t list *)
let rec person_insert lst person0 = match lst with
    [] -> [person0]
  | ({ name = n; height = h; weight = w; month = m; day = d; blood = b; } as first) :: rest
       -> match person0 with { name = n0; height = h0; weight = w0; month = m0; day = d0; blood = b0; }
          -> if n < n0 then first :: person_insert rest person0
                       else person0 :: lst ;;

(* テスト *) 
let test1 = person_insert [] person1 = [person1] 
let test2 = person_insert [person2] person1 = [person2; person1] 
let test3 = person_insert [person1] person2 = [person2; person1] 
let test4 = person_insert [person1; person2] person3 = [person1; person2; person3] 

(* 目的：person_t 型のリストを受け取ったら、名前の順に整列したリストを返す *)
(* person_sort : person_t list -> person_t list *)
let rec person_sort lst = match lst with
    [] -> []
  | first :: rest -> person_insert (person_sort rest) first ;;

(* テスト *) 
let test5 = person_insert lst1 = [] 
let test6 = person_insert lst2 = [person1] 
let test7 = person_insert lst3 = [person2; person1] 
let test8 = person_insert lst4 = [person2; person1] 
let test9 = person_insert lst5 = [person2; person1; person3] 
