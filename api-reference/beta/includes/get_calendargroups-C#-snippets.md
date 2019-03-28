
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var calendarGroups = await graphClient.Me.CalendarGroups
	.Request()
	.GetAsync();

```