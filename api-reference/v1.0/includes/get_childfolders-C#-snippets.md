
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var childFolders = await graphClient.Me.MailFolders["{id}"].ChildFolders
	.Request()
	.GetAsync();

```