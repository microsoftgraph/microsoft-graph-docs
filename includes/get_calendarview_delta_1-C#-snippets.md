
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.Me.CalendarView.Delta()
	.Request()
	.Header("Prefer","odata.maxpagesize=2")
	.GetAsync();

```