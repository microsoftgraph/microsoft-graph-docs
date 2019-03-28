
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getTeamsUserActivityUserDetail = await graphClient.Reports.GetTeamsUserActivityUserDetail('D7')
	.Request()
	.GetAsync();

```