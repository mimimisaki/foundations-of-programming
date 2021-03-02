(* 目的：2以上 n 以下の自然数のリストを受け取ったら、その範囲内の素数のリストを返す *)
(* sieve : int list -> int list *)
let rec sieve lst =
    (print_int (List.length lst);
    print_newline ();
    match lst with
        [] -> []
      | first :: rest ->
            first :: sieve (List.filter (fun x -> x mod first <> 0) rest))
        

(* テスト *) 
let test1 = sieve [2; 3; 4; 5; 6; 7; 8; 9; 10] = [2; 3; 5; 7] 
