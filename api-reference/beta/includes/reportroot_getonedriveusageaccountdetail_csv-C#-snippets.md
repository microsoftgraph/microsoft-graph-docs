
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOneDriveUsageAccountDetail = await graphClient.Reports.GetOneDriveUsageAccountDetail('D7')
	.Request()
	.GetAsync();

```