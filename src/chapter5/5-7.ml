#use "chapter4/4-4.ml"

(* 目的：身長 h 体重 w からBMIを算出し、体型を判定する *)
(* taikei : float -> float -> string *)
let taikei h w =
    if bmi h w < 18.5 then "やせ"
    else if bmi h w < 25. then "標準"
    else if bmi h w < 30. then "肥満"
    else "高度肥満"

(* テスト *)
let test1 = taikei 1.13 20. = "やせ"
let test2 = taikei 1.63 57. = "標準"
let test3 = taikei 1.71 56. = "標準"
let test4 = taikei 1.55 68. = "肥満"
let test5 = taikei 1.43 65. = "高度肥満"
