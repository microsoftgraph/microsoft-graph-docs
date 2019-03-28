
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var photo = await graphClient.Users["{id|userPrincipalName}"].Photo
	.Request()
	.GetAsync();

```