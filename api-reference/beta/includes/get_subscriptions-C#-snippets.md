
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var subscriptions = await graphClient.Subscriptions
	.Request()
	.GetAsync();

```