
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var calls = await graphClient.App.Calls["{id}"]
	.Request()
	.GetAsync();

```