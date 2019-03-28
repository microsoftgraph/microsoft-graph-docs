
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var childFolders = await graphClient.Me.MailFolders["searchfolders"].ChildFolders
	.Request()
	.GetAsync();

```