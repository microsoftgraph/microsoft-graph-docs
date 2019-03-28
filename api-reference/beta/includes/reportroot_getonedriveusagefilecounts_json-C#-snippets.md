
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOneDriveUsageFileCounts = await graphClient.Reports.GetOneDriveUsageFileCounts('D7')
	.Request()
	.GetAsync();

```