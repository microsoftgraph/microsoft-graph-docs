
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var securityEnabledOnly = False;

await graphClient.Groups["{id}"]
	.getMemberGroups(securityEnabledOnly);
	.Request()
	.PostAsync()

```