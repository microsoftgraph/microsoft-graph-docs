
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var securityEnabledOnly = True;

await graphClient.Contacts["{id}"]
	.getMemberObjects(securityEnabledOnly);
	.Request()
	.PostAsync()

```