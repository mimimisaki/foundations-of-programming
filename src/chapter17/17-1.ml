#use "chapter17/to_seireki.ml" ;;

(* 目的：誕生年と現在の年を受け取ったら、年齢を返す *)
(* nenrei : nengou_t -> nengou_t -> int *)
let nenrei birth now =
    to_seireki now - to_seireki birth

(* テスト *) 
let test1 = nenrei (Showa (42)) (Heisei (18)) = 39 
let test2 = nenrei (Heisei (11)) (Heisei (18)) = 7 
let test3 = nenrei (Meiji (41)) (Heisei (17)) = 97 
