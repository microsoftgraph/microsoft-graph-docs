
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var directoryRoleTemplates = await graphClient.DirectoryRoleTemplates["{id}"]
	.Request()
	.GetAsync();

```