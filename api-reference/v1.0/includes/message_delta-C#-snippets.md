
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.Me.MailFolders["{id}"].Messages.Delta()
	.Request()
	.Header("Prefer","odata.maxpagesize=2")
	.GetAsync();

```