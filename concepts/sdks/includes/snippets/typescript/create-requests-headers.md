<!-- markdownlint-disable MD041 -->

```typescript
// GET https://graph.microsoft.com/v1.0/me/events

let events = await client.api('/me/events')
  .header('Prefer','outlook.timezone="Pacific Standard Time"')
  .select('subject,body,bodyPreview,organizer,attendees,start,end,location')
  .get();
```
