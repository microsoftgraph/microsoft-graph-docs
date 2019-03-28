
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var conversations = await graphClient.Groups["{id}"].Conversations["{id}"]
	.Request()
	.GetAsync();

```