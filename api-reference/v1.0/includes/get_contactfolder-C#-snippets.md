
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var contactFolders = await graphClient.Me.ContactFolders["{id}"]
	.Request()
	.GetAsync();

```