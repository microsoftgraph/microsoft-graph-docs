
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var securityEnabledOnly = True;

await graphClient.DirectoryObjects["{object-id}"]
	.getMemberObjects(securityEnabledOnly);
	.Request()
	.PostAsync()

```