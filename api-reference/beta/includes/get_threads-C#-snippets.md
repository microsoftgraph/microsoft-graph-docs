
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var threads = await graphClient.Groups["{id}"].Conversations["{id}"].Threads
	.Request()
	.GetAsync();

```