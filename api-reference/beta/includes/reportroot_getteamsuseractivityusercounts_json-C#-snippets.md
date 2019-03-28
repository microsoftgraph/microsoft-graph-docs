
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getTeamsUserActivityUserCounts = await graphClient.Reports.GetTeamsUserActivityUserCounts('D7')
	.Request()
	.GetAsync();

```