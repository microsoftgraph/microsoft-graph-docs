
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessDeviceUsageUserCounts = await graphClient.Reports.GetSkypeForBusinessDeviceUsageUserCounts('D7')
	.Request()
	.GetAsync();

```