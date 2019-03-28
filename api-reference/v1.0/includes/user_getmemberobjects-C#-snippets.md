
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var securityEnabledOnly = True;

await graphClient.Me
	.getMemberObjects(securityEnabledOnly);
	.Request()
	.PostAsync()

```