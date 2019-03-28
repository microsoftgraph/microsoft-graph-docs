
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Security.SecurityActions["{id}"]
	.cancelSecurityAction();
	.Request()
	.PostAsync()

```