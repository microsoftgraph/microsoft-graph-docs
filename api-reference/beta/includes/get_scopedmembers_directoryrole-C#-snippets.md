
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var scopedMembers = await graphClient.DirectoryRoles["{id}"].ScopedMembers
	.Request()
	.GetAsync();

```