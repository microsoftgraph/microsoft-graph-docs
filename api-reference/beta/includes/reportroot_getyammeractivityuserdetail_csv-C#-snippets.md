
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getYammerActivityUserDetail = await graphClient.Reports.GetYammerActivityUserDetail('D7')
	.Request()
	.GetAsync();

```