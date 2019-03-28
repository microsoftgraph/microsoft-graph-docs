
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var securityEnabledOnly = True;

await graphClient.ServicePrincipals["{id}"]
	.getMemberObjects(securityEnabledOnly);
	.Request()
	.PostAsync()

```