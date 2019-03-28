
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getYammerDeviceUsageDistributionUserCounts = await graphClient.Reports.GetYammerDeviceUsageDistributionUserCounts('D7')
	.Request()
	.GetAsync();

```