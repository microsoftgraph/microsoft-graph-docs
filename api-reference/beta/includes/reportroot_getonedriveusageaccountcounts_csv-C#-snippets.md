
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOneDriveUsageAccountCounts = await graphClient.Reports.GetOneDriveUsageAccountCounts('D7')
	.Request()
	.GetAsync();

```