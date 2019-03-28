
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSharePointSiteUsageDetail = await graphClient.Reports.GetSharePointSiteUsageDetail('D7')
	.Request()
	.GetAsync();

```