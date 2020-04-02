```typescript
    // DELETE https://graph.microsoft.com/v1.0/me/messages/<guid>

    let messageId = "<guid>";
    let message = await client.api("/me/messages/${messageId}")
        .delete();  
```