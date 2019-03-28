
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getYammerGroupsActivityGroupCounts = await graphClient.Reports.GetYammerGroupsActivityGroupCounts('D7')
	.Request()
	.GetAsync();

```