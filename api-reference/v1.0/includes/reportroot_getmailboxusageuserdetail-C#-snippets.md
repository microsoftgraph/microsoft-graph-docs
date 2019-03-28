
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getMailboxUsageDetail = await graphClient.Reports.GetMailboxUsageDetail('D7')
	.Request()
	.GetAsync();

```