
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.PrivilegedRoleAssignmentRequests["7c53453e-d5a4-41e0-8eb1-32d5ec8bfdee"]
	.cancel();
	.Request()
	.PostAsync()

```