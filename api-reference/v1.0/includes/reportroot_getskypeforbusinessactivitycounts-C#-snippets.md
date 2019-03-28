
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessActivityCounts = await graphClient.Reports.GetSkypeForBusinessActivityCounts('D7')
	.Request()
	.GetAsync();

```