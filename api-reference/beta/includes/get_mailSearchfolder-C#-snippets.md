
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var mailFolders = await graphClient.Me.MailFolders["AAMkAGVmMDEzN"]
	.Request()
	.GetAsync();

```