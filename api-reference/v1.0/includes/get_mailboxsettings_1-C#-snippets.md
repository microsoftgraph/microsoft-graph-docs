
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var mailboxSettings = await graphClient.Me.MailboxSettings
	.Request()
	.GetAsync();

```