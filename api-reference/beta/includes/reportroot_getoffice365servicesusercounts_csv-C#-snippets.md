
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOffice365ServicesUserCounts = await graphClient.Reports.GetOffice365ServicesUserCounts('D7')
	.Request()
	.GetAsync();

```