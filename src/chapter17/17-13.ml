#use "chapter17/17-12.ml" (* insert_ekikan の定義 *)

(* 目的：ekikan_tree_t 型の木と ekikan_t list 型の駅間リストを受け取ったら、リストを全て挿入した木を返す *)
(* inserts_ekikan : ekikan_tree_t -> ekikan_t list -> ekikan_tree_t *)
let inserts_ekikan ekikan_tree ekikan_list =
    List.fold_right (fun ekikan tree -> insert_ekikan tree ekikan)
        ekikan_list ekikan_tree

(* テスト *) 
let test1 = inserts_ekikan Empty [ekikan1; ekikan2; ekikan3] = 
  Node (Node (Empty, "後楽園", [("茗荷谷", 1.8)], Empty), 
	"新大塚", [("茗荷谷", 1.2); ("池袋", 1.8)], 
        Node (Empty, 
	      "池袋", [("新大塚", 1.8)], 
	      Node (Empty, 
		    "茗荷谷", [("後楽園", 1.8); ("新大塚", 1.2)], 
		    Empty))) 

let test = inserts_ekikan Empty [ekikan1; ekikan2; ekikan3]

(* ekikan1, ekikan2, ekikan3 の定義については ex17_12.ml を参照 *) 
(* 上のふたつの定義では、挿入する順番が違うので、得られる木も異なる *) 
