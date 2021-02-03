#use "chapter10/10-7.ml" ;;

(* person_t list 型のデータの例 *) 
let lst1 = [person1] 
let lst2 = [person2] 
let lst3 = [person1; person2; person3] 
let lst4 = [person2; person1; person1] 

(* 受け取った person_t 型のリストのうち、最も多い血液型を返す *)
(* saita_ketsueki : person_t list -> string *)
let saita_ketsueki lst =
    let (a, b, o, ab) = ketsueki_shukei lst in
        let saidai = max (max a b) (max o ab) in
            if saidai = a then "A"
            else if saidai = b then "B"
            else if saidai = o then "O"
            else "AB"


(* テスト *) 
let test1 = saita_ketsueki lst1 = "A" 
let test2 = saita_ketsueki lst2 = "B" 
let test3 = saita_ketsueki lst3 = "A" 
  (* 同点のときは A, O, B, AB の順に見つかったものが返されてしまう *) 
let test4 = saita_ketsueki lst4 = "A" 