
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getEmailAppUsageUserDetail = await graphClient.Reports.GetEmailAppUsageUserDetail('D7')
	.Request()
	.GetAsync();

```