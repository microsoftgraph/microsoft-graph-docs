
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var memberOf = await graphClient.ServicePrincipals["{id}"].MemberOf
	.Request()
	.GetAsync();

```