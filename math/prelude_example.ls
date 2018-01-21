{map, filter, fold1} = require \prelude-ls

[1 2 3] 
    |> map (* 2) 
    |> filter (> 3) 
    |> fold1 (+)
    |> console.log
