#use "chapter9/9-10.ml" ;;
#use "chapter17/17-11.ml" ;;
#use "chapter17/17-13.ml" ;;
(* ekikan_t が２回読み込まれてしまうので、調整する *)

(* 目的：駅名二つと ekikan_tree_t 型の木を受け取ったら、その２駅間の距離を返す *)
(* get_ekikan_kyori : string -> string -> ekikan_tree_t -> float *)
let rec get_ekikan_kyori ekimei1 ekimai2 ekikan_tree = match ekikan_tree with
    Empty -> infinity
  | Node (left, n, lst, right)
          -> if ekimei1 < n then get_ekikan_kyori ekimei1 ekimai2 left
             else if ekimei1 > n then get_ekikan_kyori ekimei1 ekimai2 right
             else assoc ekimai2 lst

(* テスト *) 
let global_ekikan_tree = inserts_ekikan Empty global_ekikan_list 
let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_tree = 1.2 
let test2 = get_ekikan_kyori "茗荷谷" "池袋" global_ekikan_tree = infinity 
let test3 = get_ekikan_kyori "東京" "大手町" global_ekikan_tree = 0.6 
