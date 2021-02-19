(* 「駅名」と「駅名と距離の組のリスト」を受け取ったら、その駅までの距離を返す *)
(* assoc : string -> (string * float) list -> float *)
let rec assoc ekimei0 lst = match lst with
    [] -> infinity
  | (ekimei, kyori) :: rest
        -> if ekimei0 = ekimei then kyori
           else assoc ekimei0 rest

(* テスト *) 
let test1 = assoc "後楽園" [] = infinity 
let test2 = assoc "後楽園" [("新大塚", 1.2); ("後楽園", 1.8)] = 1.8 
let test3 = assoc "池袋" [("新大塚", 1.2); ("後楽園", 1.8)] = infinity 
