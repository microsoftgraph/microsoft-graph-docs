
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.PrivilegedRoles["{id}"]
	.selfDeactivate();
	.Request()
	.PostAsync()

```