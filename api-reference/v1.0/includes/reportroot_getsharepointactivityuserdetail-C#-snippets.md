
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSharePointActivityUserDetail = await graphClient.Reports.GetSharePointActivityUserDetail('D7')
	.Request()
	.GetAsync();

```