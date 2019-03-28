
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var $value = await graphClient.Users["{id|userPrincipalName}"].Photo.$value
	.Request()
	.GetAsync();

```