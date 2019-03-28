
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var securityActions = await graphClient.Security.SecurityActions
	.Request()
	.GetAsync();

```