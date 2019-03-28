
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var securityEnabledOnly = False;

await graphClient.Groups["{id}"]
	.getMemberObjects(securityEnabledOnly);
	.Request()
	.PostAsync()

```