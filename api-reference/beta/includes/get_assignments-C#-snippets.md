
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var assignments = await graphClient.PrivilegedRoles["{id}"].Assignments
	.Request()
	.GetAsync();

```