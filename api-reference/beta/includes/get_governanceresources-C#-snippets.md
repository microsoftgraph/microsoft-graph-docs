
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var resources = await graphClient.PrivilegedAccess["azureResources"].Resources
	.Request()
	.GetAsync();

```