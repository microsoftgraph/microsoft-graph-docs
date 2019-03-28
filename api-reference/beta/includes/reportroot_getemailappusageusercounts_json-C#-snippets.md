
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getEmailAppUsageUserCounts = await graphClient.Reports.GetEmailAppUsageUserCounts('D7')
	.Request()
	.GetAsync();

```