mysql = require 'mysql'

connection = mysql.createConnection do
   host: 'localhost'
   user: 'root'
   password: ''
   database: 'absa'

connection.connect!
   
connection.query 'SELECT * FROM cores', 
   (error, results, fields) ->
      if error then throw error
      console.log 'The solution is: ', results

connection.end!