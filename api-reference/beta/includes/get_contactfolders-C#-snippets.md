
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var contactFolders = await graphClient.Me.ContactFolders
	.Request()
	.GetAsync();

```