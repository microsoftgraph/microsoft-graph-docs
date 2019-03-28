
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var schedule = await graphClient.Teams["{teamId}"].Schedule
	.Request()
	.GetAsync();

```