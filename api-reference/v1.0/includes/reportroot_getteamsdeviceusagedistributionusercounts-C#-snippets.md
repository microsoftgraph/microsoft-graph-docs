
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getTeamsDeviceUsageDistributionUserCounts = await graphClient.Reports.GetTeamsDeviceUsageDistributionUserCounts('D7')
	.Request()
	.GetAsync();

```