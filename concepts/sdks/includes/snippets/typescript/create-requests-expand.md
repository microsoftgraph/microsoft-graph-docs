<!-- markdownlint-disable MD041 -->

```typescript
// GET https://graph.microsoft.com/v1.0/me/messages?$expand=attachments

let messageId = 'AQMkAGUy..';
let message = await client.api(`/me/messages/${messageId}`)
  .expand('attachments')
  .get();
```
