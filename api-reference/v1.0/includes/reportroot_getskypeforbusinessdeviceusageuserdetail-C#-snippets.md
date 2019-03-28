
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessDeviceUsageUserDetail = await graphClient.Reports.GetSkypeForBusinessDeviceUsageUserDetail('D7')
	.Request()
	.GetAsync();

```