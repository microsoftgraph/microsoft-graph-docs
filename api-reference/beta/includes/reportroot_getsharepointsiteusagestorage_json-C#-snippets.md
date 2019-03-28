
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSharePointSiteUsageStorage = await graphClient.Reports.GetSharePointSiteUsageStorage('D7')
	.Request()
	.GetAsync();

```