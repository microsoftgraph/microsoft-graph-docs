
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getYammerGroupsActivityCounts = await graphClient.Reports.GetYammerGroupsActivityCounts('D7')
	.Request()
	.GetAsync();

```