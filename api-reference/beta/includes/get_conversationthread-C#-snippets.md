
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var threads = await graphClient.Groups["{id}"].Threads["{id}"]
	.Request()
	.GetAsync();

```