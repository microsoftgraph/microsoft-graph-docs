
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var messages = await graphClient.Teams["{id}"].Channels["{id}"].Messages["{id}"]
	.Request()
	.GetAsync();

```