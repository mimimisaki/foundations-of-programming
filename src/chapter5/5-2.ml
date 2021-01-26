(* 目的：時間 time を受け取ったら、午後か午前かを返す *)
(* jikan : int -> string *)
let jikan time = 
    if time < 12 then "午前"
                 else "午後"

(* テスト *)
let test1 = jikan 1 = "午前"
let test2 = jikan 12 = "午後"
let test4 = jikan 23 = "午後"