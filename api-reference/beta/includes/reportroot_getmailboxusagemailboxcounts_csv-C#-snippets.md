
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getMailboxUsageMailboxCounts = await graphClient.Reports.GetMailboxUsageMailboxCounts('D7')
	.Request()
	.GetAsync();

```