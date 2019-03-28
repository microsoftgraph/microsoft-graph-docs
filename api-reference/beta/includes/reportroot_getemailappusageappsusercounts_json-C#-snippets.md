
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getEmailAppUsageAppsUserCounts = await graphClient.Reports.GetEmailAppUsageAppsUserCounts('D7')
	.Request()
	.GetAsync();

```