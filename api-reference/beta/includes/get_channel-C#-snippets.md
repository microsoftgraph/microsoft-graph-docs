
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var channels = await graphClient.Teams["{id}"].Channels["{id}"]
	.Request()
	.GetAsync();

```