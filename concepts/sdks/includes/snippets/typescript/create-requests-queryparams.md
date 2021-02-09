<!-- markdownlint-disable MD041 -->

```typescript
// GET https://graph.microsoft.com/v1.0/me/calendar/calendarView

const start = '2020-01-01T19:00:00';
const end = '2020-01-07T19:00:00';

let calendar = await client
  .api(`/me/calendar/calendarView?startDateTime=${start}&endDateTime=${end}`)
  .get();
```
