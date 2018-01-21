module.exports.test = 
   sendTextMessage = do
      (recipientId, messageText) ->      
         messageData:
            recipient: 
               id: recipientId
            message: 
               text: messageText
