
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var privilegedRoles = await graphClient.PrivilegedRoles["{id}"]
	.Request()
	.GetAsync();

```