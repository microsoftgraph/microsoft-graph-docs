
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var subscribedSkus = await graphClient.SubscribedSkus["{id}"]
	.Request()
	.GetAsync();

```