
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.Me.ContactFolders.Delta()
	.Request()
	.GetAsync();

```