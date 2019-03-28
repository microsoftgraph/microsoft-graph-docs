
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var messageRules = await graphClient.Me.MailFolders["inbox"].MessageRules["AQAAAJ5dZqA="]
	.Request()
	.GetAsync();

```