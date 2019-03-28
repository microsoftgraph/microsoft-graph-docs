
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOneDriveActivityUserDetail = await graphClient.Reports.GetOneDriveActivityUserDetail('D7')
	.Request()
	.GetAsync();

```