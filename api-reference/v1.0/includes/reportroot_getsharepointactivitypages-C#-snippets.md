
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSharePointActivityPages = await graphClient.Reports.GetSharePointActivityPages('D7')
	.Request()
	.GetAsync();

```