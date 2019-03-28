
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var summary = await graphClient.PrivilegedRoles["{id}"].Summary
	.Request()
	.GetAsync();

```