
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var securityEnabledOnly = True;

await graphClient.Contacts["{id}"]
	.getMemberGroups(securityEnabledOnly);
	.Request()
	.PostAsync()

```