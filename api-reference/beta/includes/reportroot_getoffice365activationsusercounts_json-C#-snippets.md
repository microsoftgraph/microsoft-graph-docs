
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOffice365ActivationsUserCounts = await graphClient.Reports.GetOffice365ActivationsUserCounts()
	.Request()
	.GetAsync();

```