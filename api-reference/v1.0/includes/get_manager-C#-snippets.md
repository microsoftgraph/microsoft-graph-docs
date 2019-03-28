
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var manager = await graphClient.Users["{id|userPrincipalName}"].Manager
	.Request()
	.GetAsync();

```