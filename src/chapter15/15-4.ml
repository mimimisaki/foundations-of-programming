#use "chapter12/12-1.ml" ;;

(* 目的：eki_t 型のリストを受け取ったら、「最短距離最小の駅」と「最短距離最小の駅以外からなるリスト」の組を返す *)
(* saitan_wo_bunri : eki_t list -> (eki_t * eki_t list) *)
let rec saitan_wo_bunri eki_list = match eki_list with
    [] -> ({namae = ""; saitan_kyori = infinity; temae_list = []}, [])
  | first :: [] -> (first, [])
  | first :: rest
        -> let (p, v) = saitan_wo_bunri rest in
            match (first, p) with
                ({namae = fn; saitan_kyori = fs; temae_list = ft},
                 {namae = pn; saitan_kyori = ps; temae_list = pt})
                 -> if fs < ps then (first, p :: v)
                               else (p, first :: v)

(* 駅の例 *) 
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 
 
(* 駅リストの例 *) 
let lst = [eki1; eki2; eki3; eki4] 
 
(* テスト *) 
let test = saitan_wo_bunri lst
