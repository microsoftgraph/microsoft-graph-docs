
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var calendar = await graphClient.Me.Calendar
	.Request()
	.GetAsync();

```