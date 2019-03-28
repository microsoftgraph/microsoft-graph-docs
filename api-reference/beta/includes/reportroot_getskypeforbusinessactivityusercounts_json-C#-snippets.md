
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessActivityUserCounts = await graphClient.Reports.GetSkypeForBusinessActivityUserCounts('D7')
	.Request()
	.GetAsync();

```