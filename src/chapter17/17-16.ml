#use "chapter12/12-1.ml" ;;

(* 目的：受け取った駅のリストを、最短距離最小の駅とそれ以外に分離する *) 
(* saitan_wo_bunri : eki_t -> eki_t list -> eki_t * eki_t list *)
let rec saitan_wo_bunri eki rest_list = match rest_list with
    [] -> (eki, [])
  | first :: rest
        -> let (p, v) = saitan_wo_bunri first rest in
            match (eki, p) with
            ({namae = fn; saitan_kyori = fs; temae_list = ft},
             {namae = pn; saitan_kyori = ps; temae_list = pt})
                -> if fs < ps then (eki, p :: v)
                              else (p, eki :: v)

(* 駅の例 *) 
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 
 
(* 駅リストの例 *) 
let lst = [eki2; eki3; eki4] 
 
(* テスト *) 
let test = saitan_wo_bunri eki1 lst
