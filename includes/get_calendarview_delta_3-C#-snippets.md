
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.Me.CalendarView.Delta()
	.Request()
	.Header("Prefer","odata.maxpagesize=2")
	.SkipToken("R0usmci39OQxqJrxK4")
	.GetAsync();

```