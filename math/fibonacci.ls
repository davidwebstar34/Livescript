_ = require 'prelude-ls'

fibonacci = _.Func.memoize (n) ->
   if n > 1 then fibonacci(n-1) + fibonacci(n-2) else 1

x = 0
fibs = 0
fibs = []

loop
   fib = fibonacci x++
   if fib > 4e6 then break else fibs.push fib

fibs 
   |> _.filter _.even
   |> _.sum
   |> console.log 
