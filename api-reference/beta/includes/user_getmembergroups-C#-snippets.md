
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var securityEnabledOnly = True;

await graphClient.Me
	.getMemberGroups(securityEnabledOnly);
	.Request()
	.PostAsync()

```