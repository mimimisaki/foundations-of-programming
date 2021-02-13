(* person_t 型のデータを受け取ったら、名前フィールドを取り出す *)
fun person -> match person with
    {name = n; height = h; weight = w; month = m; day = d; blood = b}
    -> n