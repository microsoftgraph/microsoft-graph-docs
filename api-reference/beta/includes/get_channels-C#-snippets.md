
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var channels = await graphClient.Teams["{id}"].Channels
	.Request()
	.GetAsync();

```