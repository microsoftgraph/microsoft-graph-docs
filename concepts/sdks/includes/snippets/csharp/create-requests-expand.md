```csharp
    // GET https://graph.microsoft.com/v1.0/me/messages/<guid>?$expand=attachments

     string messageId = "<guid>";
     Message message = await graphClient.Me.Messages[messageId]
                .Request()
                .Expand("attachments")
                .GetAsync();

```