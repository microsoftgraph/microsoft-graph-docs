
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var my = await graphClient.PrivilegedRoleAssignmentRequests.My()
	.Request()
	.GetAsync();

```