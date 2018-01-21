locationQuestion_replies = 
   quick_replies:
      content_type:"location"
      ...

console.log locationQuestion_replies

sendTextMessage = 
   (recipientId, messageText) ->      
      messageData:
         recipient: 
            id: recipientId
         message: 
            text: messageText

console.log sendTextMessage "123", "456"
