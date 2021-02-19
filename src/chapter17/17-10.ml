(* 最短路問題で使う木を表す型 *)
type ekikan_tree_t =
    Empty
  | Node of ekikan_tree_t * string * (string * float) list * ekikan_tree_t
(* 葉にあたる要素は string * (string * float) *)
(* 駅名 * (その駅に直接つながっている駅名 * その駅までの距離) *)