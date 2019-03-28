
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var settings = await graphClient.PrivilegedRoles["{id}"].Settings
	.Request()
	.GetAsync();

```