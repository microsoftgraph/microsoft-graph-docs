
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var calendarView = await graphClient.Me.CalendarView
	.Request()
	.GetAsync();

```