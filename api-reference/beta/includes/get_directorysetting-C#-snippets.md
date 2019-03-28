
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var settings = await graphClient.Settings["{id}"]
	.Request()
	.GetAsync();

```