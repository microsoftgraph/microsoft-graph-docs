<!-- markdownlint-disable MD041 -->

```typescript
// GET https://graph.microsoft.com/v1.0/me/messages/{message-id}

let messageId = 'AQMkAGUy..';
let messages = await client.api(`/me/messages/${messageId}`)
  .get();
```
