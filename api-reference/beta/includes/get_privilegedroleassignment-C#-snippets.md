
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var privilegedRoleAssignments = await graphClient.PrivilegedRoleAssignments["{id}"]
	.Request()
	.GetAsync();

```