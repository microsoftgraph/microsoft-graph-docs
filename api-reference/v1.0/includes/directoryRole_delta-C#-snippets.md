
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.DirectoryRoles.Delta()
	.Request()
	.GetAsync();

```