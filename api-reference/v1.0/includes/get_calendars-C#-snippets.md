
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var calendars = await graphClient.Me.Calendars
	.Request()
	.GetAsync();

```