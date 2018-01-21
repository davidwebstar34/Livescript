require! http
http.createServer (request, response) !->
	response.writeHead 200, { \Content-Type : \text-html }
	response.write "<html><h1>Hello Livescript! </h1></html>"
	response.end!
.listen 4000
console.log "server is running..." 
