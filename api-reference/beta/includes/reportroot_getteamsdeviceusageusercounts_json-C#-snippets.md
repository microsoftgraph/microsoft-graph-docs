
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getTeamsDeviceUsageUserCounts = await graphClient.Reports.GetTeamsDeviceUsageUserCounts('D7')
	.Request()
	.GetAsync();

```