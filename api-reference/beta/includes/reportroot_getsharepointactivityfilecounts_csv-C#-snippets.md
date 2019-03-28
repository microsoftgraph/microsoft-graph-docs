
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSharePointActivityFileCounts = await graphClient.Reports.GetSharePointActivityFileCounts('D7')
	.Request()
	.GetAsync();

```