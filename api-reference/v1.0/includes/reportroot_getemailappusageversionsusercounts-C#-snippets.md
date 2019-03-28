
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getEmailAppUsageVersionsUserCounts = await graphClient.Reports.GetEmailAppUsageVersionsUserCounts('D7')
	.Request()
	.GetAsync();

```