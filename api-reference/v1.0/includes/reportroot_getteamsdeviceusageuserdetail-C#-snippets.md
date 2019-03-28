
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getTeamsDeviceUsageUserDetail = await graphClient.Reports.GetTeamsDeviceUsageUserDetail('D7')
	.Request()
	.GetAsync();

```