
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessActivityUserDetail = await graphClient.Reports.GetSkypeForBusinessActivityUserDetail('D7')
	.Request()
	.GetAsync();

```