single = require './singleton.ls'

obj1 = single.getBotInstance!
obj2 = single.getBotInstance!

console.log obj1 === obj2
