myFunc = 
   (val, callback) ->
      if val == 1 
      then callback true 
      else callback false

myFunc 0, (bool) ->
   if bool 
   then console.log "WOWZA" 
   else console.log "NOTWOWZA"