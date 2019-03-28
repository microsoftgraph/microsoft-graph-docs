
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.Me.CalendarView.Delta()
	.Request()
	.GetAsync();

```