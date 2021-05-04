<!-- markdownlint-disable MD041 -->

```typescript
// DELETE https://graph.microsoft.com/v1.0/me/messages/{message-id}

let messageId = 'AQMkAGUy..';
let message = await client.api('/me/messages/${messageId}')
  .delete();
```
