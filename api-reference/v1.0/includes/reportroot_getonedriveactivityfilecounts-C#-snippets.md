
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOneDriveActivityFileCounts = await graphClient.Reports.GetOneDriveActivityFileCounts('D7')
	.Request()
	.GetAsync();

```