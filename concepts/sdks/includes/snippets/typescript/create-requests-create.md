<!-- markdownlint-disable MD041 -->

```typescript
//POST https://graph.microsoft.com/v1.0/me/calendars

const calendar = {
  name: 'Volunteer'
};

let newCalendar = await client.api('/me/calendars')
  .post(calendar);
```
