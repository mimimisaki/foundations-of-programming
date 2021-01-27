(* 目的：受け取った平面座標(x, y)からx軸対象の座標を返す *)
(* taisho_x : float * float -> float * float *)
let taisho_x point = match point with
    (x, y) -> (x, -.y)

(* test *)
let test1 = taisho_x (0., 0.) = (0., 0.)
let test2 = taisho_x (2.3, 5.1) = (2.3, -5.1)
let test3 = taisho_x (-3.8, -2.4) = (-3.8, 2.4)