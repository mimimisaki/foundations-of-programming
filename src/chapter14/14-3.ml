(* 目的：ふたつの文字列をつなげる *) 
(* append_string : string -> string -> string *) 
let append_string first rest_result = first ^ rest_result

(* 目的：受け取った文字列のリストの要素を前から順に全部くっつけた文字列を返す *)
(* concat : string list -> string *)
let concat lst = List.fold_right append_string lst ""

let test1 = concat [] = ""
let test2 = concat ["a"] = "a"
let test3 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
