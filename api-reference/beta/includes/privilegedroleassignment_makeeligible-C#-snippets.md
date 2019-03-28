
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.PrivilegedRoleAssignments["{id}"]
	.makeEligible();
	.Request()
	.PostAsync()

```