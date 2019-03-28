
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var messageRules = await graphClient.Me.MailFolders["inbox"].MessageRules
	.Request()
	.GetAsync();

```