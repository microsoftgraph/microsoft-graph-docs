
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var alerts = await graphClient.Security.Alerts
	.Request()
	.GetAsync();

```