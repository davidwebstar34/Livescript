module.exports = do
   bot = undefined
   createBotInstance = ->
      bot =
         page_token: "SomeTokenHere"
         verify_token: "verify_token"   
   getBotInstance: ->
      if !bot then
         createBotInstance!
      else if bot then
         bot
