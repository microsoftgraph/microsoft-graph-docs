
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOffice365ActiveUserDetail = await graphClient.Reports.GetOffice365ActiveUserDetail('D7')
	.Request()
	.GetAsync();

```