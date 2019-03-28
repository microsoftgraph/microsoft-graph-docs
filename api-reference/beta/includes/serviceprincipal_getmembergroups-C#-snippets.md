
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var securityEnabledOnly = True;

await graphClient.ServicePrincipals["{id}"]
	.getMemberGroups(securityEnabledOnly);
	.Request()
	.PostAsync()

```