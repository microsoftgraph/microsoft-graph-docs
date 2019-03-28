
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessOrganizerActivityCounts = await graphClient.Reports.GetSkypeForBusinessOrganizerActivityCounts('D7')
	.Request()
	.GetAsync();

```