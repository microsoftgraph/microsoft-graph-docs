
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOneDriveUsageStorage = await graphClient.Reports.GetOneDriveUsageStorage('D7')
	.Request()
	.GetAsync();

```