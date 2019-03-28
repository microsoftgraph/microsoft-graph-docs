
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getYammerGroupsActivityDetail = await graphClient.Reports.GetYammerGroupsActivityDetail('D7')
	.Request()
	.GetAsync();

```