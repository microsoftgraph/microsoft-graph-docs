
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getYammerDeviceUsageUserDetail = await graphClient.Reports.GetYammerDeviceUsageUserDetail('D7')
	.Request()
	.GetAsync();

```