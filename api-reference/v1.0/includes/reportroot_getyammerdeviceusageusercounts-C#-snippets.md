
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getYammerDeviceUsageUserCounts = await graphClient.Reports.GetYammerDeviceUsageUserCounts('D7')
	.Request()
	.GetAsync();

```