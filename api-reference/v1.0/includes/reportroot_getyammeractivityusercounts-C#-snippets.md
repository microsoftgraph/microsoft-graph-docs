
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getYammerActivityUserCounts = await graphClient.Reports.GetYammerActivityUserCounts('D7')
	.Request()
	.GetAsync();

```