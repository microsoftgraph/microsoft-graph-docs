
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var my = await graphClient.PrivilegedRoleAssignments.My()
	.Request()
	.GetAsync();

```