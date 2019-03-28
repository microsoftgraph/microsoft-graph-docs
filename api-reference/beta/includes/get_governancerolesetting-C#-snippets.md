
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var roleSettings = await graphClient.PrivilegedAccess["azureResources"].RoleSettings["80dc5d6f-8d89-47b3-953f-01dc909ed3f9"]
	.Request()
	.GetAsync();

```