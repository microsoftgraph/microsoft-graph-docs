
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getMailboxUsageStorage = await graphClient.Reports.GetMailboxUsageStorage('D7')
	.Request()
	.GetAsync();

```