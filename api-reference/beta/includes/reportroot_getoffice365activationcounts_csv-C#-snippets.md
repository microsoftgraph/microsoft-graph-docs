
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOffice365ActivationCounts = await graphClient.Reports.GetOffice365ActivationCounts()
	.Request()
	.GetAsync();

```