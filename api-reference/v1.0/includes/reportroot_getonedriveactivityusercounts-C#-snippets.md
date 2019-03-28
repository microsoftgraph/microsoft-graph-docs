
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOneDriveActivityUserCounts = await graphClient.Reports.GetOneDriveActivityUserCounts('D7')
	.Request()
	.GetAsync();

```