(* 目的：受け取った name, hyoka から文字列を返す *)
(* seiseki : string * string -> string *)
let seiseki pair = match pair with
    (name, hyoka) -> name ^ "さんの成績は" ^ hyoka ^ "です。"

(* test *)
let test1 = seiseki ("浅井", "C") = "浅井さんの成績はCです。"
let test2 = seiseki ("中村", "A") = "中村さんの成績はAです。"
let test3 = seiseki ("出原", "B") = "出原さんの成績はBです。"