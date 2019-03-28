
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var privilegedRoleAssignmentRequests = await graphClient.PrivilegedRoleAssignmentRequests
	.Request()
	.GetAsync();

```