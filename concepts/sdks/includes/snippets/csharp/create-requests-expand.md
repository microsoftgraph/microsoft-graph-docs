<!-- markdownlint-disable MD041 -->

```csharp
// GET https://graph.microsoft.com/v1.0/me/messages/{message-id}?$expand=attachments

string messageId = "AQMkAGUy...";
var message = await graphClient.Me.Messages[messageId]
    .Request()
    .Expand("attachments")
    .GetAsync();
```
