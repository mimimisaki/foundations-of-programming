#use "chapter9/9-9.ml" ;; (* ekimei_t, global_ekimai_list *)
#use "chapter18/18-6.ml" ;; (* No_such_station *)

(* 目的：ローマ字の駅名と駅名リストを受け取ったら、その駅の漢字表記を文字列で返す *)
(* 見つからなかったら例外 No_such_station を起こす *)
(* romaji_to_kanji : string -> ekimei_t list -> string *)
let rec romaji_to_kanji r0 ekimei_list = match ekimei_list with
    [] -> raise (No_such_station (r0))
  | {kanji = k; kana = a; romaji = r; shozoku = s} :: rest
        -> if r0 = r then k
                     else romaji_to_kanji r0 rest

(* テスト *) 
let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷" 
let test2 = romaji_to_kanji "shibuya" global_ekimei_list = "渋谷" 
let test3 = romaji_to_kanji "otemachi" global_ekimei_list = "大手町" 
let test4 = romaji_to_kanji "osaka" global_ekimei_list 
   (* No_such_station "osaka" を起こす *) 