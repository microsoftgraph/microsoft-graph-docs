
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSharePointSiteUsageSiteCounts = await graphClient.Reports.GetSharePointSiteUsageSiteCounts('D7')
	.Request()
	.GetAsync();

```