
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getEmailActivityUserCounts = await graphClient.Reports.GetEmailActivityUserCounts('D7')
	.Request()
	.GetAsync();

```