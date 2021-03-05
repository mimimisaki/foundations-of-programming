let count = ref (-1)

(* 目的：文字列に毎回、異なる数字をつけて返す *) 
(* gensym : string -> string *)
let gensym str =
    (count := !count + 1;
    str ^ string_of_int !count;)

(* テスト *) 
let test1 = gensym "a" = "a0" 
let test2 = gensym "a" = "a1" 
let test3 = gensym "x" = "x2" 
