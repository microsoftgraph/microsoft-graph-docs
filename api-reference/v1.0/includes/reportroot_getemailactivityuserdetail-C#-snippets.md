
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getEmailActivityUserDetail = await graphClient.Reports.GetEmailActivityUserDetail('D7')
	.Request()
	.GetAsync();

```