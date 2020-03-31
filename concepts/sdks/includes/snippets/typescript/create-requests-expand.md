```typescript
    // GET https://graph.microsoft.com/v1.0/me/messages?$expand=attachments

    let messageId = "<guid>";
    let message = await client.api("/me/messages/${messageId}")
        .expand("attachments")
        .get();  
```