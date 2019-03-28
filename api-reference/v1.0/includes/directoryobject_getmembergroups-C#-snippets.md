
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var securityEnabledOnly = True;

await graphClient.DirectoryObjects["{object-id}"]
	.getMemberGroups(securityEnabledOnly);
	.Request()
	.PostAsync()

```