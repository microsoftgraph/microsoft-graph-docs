
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var directoryRoles = await graphClient.DirectoryRoles["{id}"]
	.Request()
	.GetAsync();

```