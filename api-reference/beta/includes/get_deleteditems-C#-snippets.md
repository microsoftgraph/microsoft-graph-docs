
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var microsoft.graph.group = await graphClient.Directory.DeletedItems.Microsoft.graph.group
	.Request()
	.GetAsync();

```