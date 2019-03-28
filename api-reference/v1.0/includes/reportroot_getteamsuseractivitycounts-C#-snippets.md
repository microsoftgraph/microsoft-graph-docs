
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getTeamsUserActivityCounts = await graphClient.Reports.GetTeamsUserActivityCounts('D7')
	.Request()
	.GetAsync();

```