
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessDeviceUsageDistributionUserCounts = await graphClient.Reports.GetSkypeForBusinessDeviceUsageDistributionUserCounts('D7')
	.Request()
	.GetAsync();

```