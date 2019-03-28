
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var tiIndicators = await graphClient.Security.TiIndicators
	.Request()
	.GetAsync();

```