
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getEmailActivityCounts = await graphClient.Reports.GetEmailActivityCounts('D7')
	.Request()
	.GetAsync();

```