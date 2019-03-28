
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSharePointSiteUsageFileCounts = await graphClient.Reports.GetSharePointSiteUsageFileCounts('D7')
	.Request()
	.GetAsync();

```