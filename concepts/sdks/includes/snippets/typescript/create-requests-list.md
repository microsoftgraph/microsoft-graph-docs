<!-- markdownlint-disable MD041 -->

```typescript
// GET https://graph.microsoft.com/v1.0/me/messages?$select=subject,sender
// &$filter=<some condition>&orderBy=receivedDateTime

let messages = await client.api('/me/messages')
  .select('subject', 'sender')
  .filter('some condition')
  .orderBy('receivedDateTime')
  .get();
```
