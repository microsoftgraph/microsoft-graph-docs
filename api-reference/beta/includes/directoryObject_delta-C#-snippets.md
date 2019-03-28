
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var directoryObjects = await graphClient.DirectoryObjects["delta"]
	.Request()
	.Filter("isOf('Microsoft.Graph.User')+or+isOf('Microsoft.Graph.Group')")
	.GetAsync();

```