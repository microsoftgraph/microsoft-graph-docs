<!-- markdownlint-disable MD041 -->

```csharp
// GET https://graph.microsoft.com/v1.0/me/messages/{message-id}

string messageId = "AQMkAGUy..";
var message = await graphClient.Me.Messages[messageId]
    .Request()
    .GetAsync();
```
