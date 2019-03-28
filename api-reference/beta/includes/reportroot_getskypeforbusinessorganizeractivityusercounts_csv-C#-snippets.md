
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessOrganizerActivityUserCounts = await graphClient.Reports.GetSkypeForBusinessOrganizerActivityUserCounts('D7')
	.Request()
	.GetAsync();

```