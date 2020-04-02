```JavaScript
    // GET https://graph.microsoft.com/v1.0/me/messages/<guid>

    let messageId = "<guid>";
    let messages = await client.api("/me/messages/${messageId}")
        .get();  
```
