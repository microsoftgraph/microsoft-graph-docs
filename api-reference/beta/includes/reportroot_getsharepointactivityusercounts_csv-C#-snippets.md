
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSharePointActivityUserCounts = await graphClient.Reports.GetSharePointActivityUserCounts('D7')
	.Request()
	.GetAsync();

```