
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getMailboxUsageQuotaStatusMailboxCounts = await graphClient.Reports.GetMailboxUsageQuotaStatusMailboxCounts('D7')
	.Request()
	.GetAsync();

```