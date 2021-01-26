(* 目的：身長 h 体重 w からBMIを返す *)
(* bmi : float -> float -> float *)
let bmi h w =
    w /. (h *. h)
    