# promise = require 'bluebird'
# trying to get that weird scoping exmample to work

# promise = new Promise do
#    (res, rej) -> 
#       res 'Hello' 

Promise.resolve 'Hello'
   .then (res) -> 
      Promise.resolve res + '1'
      .then (res1) -> 
         Promise.resolve res1 + '2'
         .then (res2) -> 
            Promise.resolve res2 + '3'
         .then (res3) -> 
            console.log res3 + res + res1

# async test = 
#    (a, b) -> a + b
      
# Promise.resolve 'Some async task'
#    .then (res) -> console.log res

# The reason this happens is because when you pass then() a non-function 
# (such as a promise), it actually interprets it as then(null), which causes
# the previous promise's result to fall through
Promise.resolve 'foo' 
   .then undefined
   .then (res, ass) -> console.log res