let twice f = let g x = f (f x) in g

let g =  twice twice

let g2 x = (twice twice) x;;