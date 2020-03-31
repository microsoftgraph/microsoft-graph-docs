```csharp
    // GET https://graph.microsoft.com/v1.0/me/messages/<guid>

     string messageId = "<guid>";
     Message message = await graphClient.Me.Messages[messageId]
                .Request()
                .GetAsync();

```