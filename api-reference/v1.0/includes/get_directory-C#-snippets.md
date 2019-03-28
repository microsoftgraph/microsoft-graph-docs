
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var deletedItems = await graphClient.Directory.DeletedItems["{object-id}"]
	.Request()
	.GetAsync();

```