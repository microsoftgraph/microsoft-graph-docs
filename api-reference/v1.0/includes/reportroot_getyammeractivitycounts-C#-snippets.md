
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getYammerActivityCounts = await graphClient.Reports.GetYammerActivityCounts('D7')
	.Request()
	.GetAsync();

```