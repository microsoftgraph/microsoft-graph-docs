
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var posts = await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"]
	.Request()
	.GetAsync();

```