
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var directoryObjects = await graphClient.DirectoryObjects["{id}"]
	.Request()
	.GetAsync();

```