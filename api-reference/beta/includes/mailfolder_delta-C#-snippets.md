
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.Me.MailFolders.Delta()
	.Request()
	.GetAsync();

```