
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var settings = await graphClient.Settings
	.Request()
	.GetAsync();

```