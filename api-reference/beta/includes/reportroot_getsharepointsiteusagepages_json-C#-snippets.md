
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSharePointSiteUsagePages = await graphClient.Reports.GetSharePointSiteUsagePages('D7')
	.Request()
	.GetAsync();

```