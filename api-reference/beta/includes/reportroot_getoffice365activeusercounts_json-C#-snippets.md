
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOffice365ActiveUserCounts = await graphClient.Reports.GetOffice365ActiveUserCounts('D7')
	.Request()
	.GetAsync();

```