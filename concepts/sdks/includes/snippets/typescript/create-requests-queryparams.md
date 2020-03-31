```typescript
const options = {
	authProvider,
};

const client = Client.init(options);

let calendar = await client.api('/me/calendar/calendarView?startDateTime=2017-01-01T19:00:00.0000000&endDateTime=2017-01-07T19:00:00.0000000')
	.get();

```