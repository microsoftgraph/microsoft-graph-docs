
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var appRoleAssignments = await graphClient.AppRoleAssignments["{id}"]
	.Request()
	.GetAsync();

```