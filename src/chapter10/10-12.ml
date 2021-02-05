#use "chapter10/10-10.ml" ;;
#use "chapter10/10-11.ml" ;;

(* 目的：ふたつの駅の間の距離を文字列で表現する *)
let kyori_wo_hyoji romaji1 romaji2 =
    let kanji1 = romaji_to_kanji romaji1 global_ekimei_list in
        if kanji1 = "" then romaji1 ^ " という駅は存在しません"
            else let kanji2 = romaji_to_kanji romaji2 global_ekimei_list in
                if kanji2 = "" then romaji2 ^ " という駅は存在しません"
                else let kyori = get_ekikan_kyori kanji1 kanji2 global_ekikan_list in
                    if kyori = infinity then kanji1 ^ "と" ^ kanji2 ^ "はつながっていません"
                                        else kanji1 ^ "から" ^ kanji2 ^ "までは " ^ string_of_float kyori ^ " キロです"


(* テスト *) 
let test1 = kyori_wo_hyoji "myougadani" "shinotsuka" 
	    = "myougadani という駅は存在しません" 
let test2 = kyori_wo_hyoji "myogadani" "shinotsuka" 
	    = "茗荷谷から新大塚までは 1.2 キロです" 
let test3 = kyori_wo_hyoji "myogadani" "ikebukuro" 
	    = "茗荷谷と池袋はつながっていません" 
let test4 = kyori_wo_hyoji "tokyo" "ootemachi" 
	    = "ootemachi という駅は存在しません" 
let test5 = kyori_wo_hyoji "tokyo" "otemachi" 
	    = "東京から大手町までは 0.6 キロです" 
