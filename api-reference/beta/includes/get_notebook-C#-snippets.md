
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var notebooks = await graphClient.Me.Onenote.Notebooks["{id}"]
	.Request()
	.GetAsync();

```