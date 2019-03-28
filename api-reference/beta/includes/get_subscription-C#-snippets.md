
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var subscriptions = await graphClient.Subscriptions["{id}"]
	.Request()
	.GetAsync();

```