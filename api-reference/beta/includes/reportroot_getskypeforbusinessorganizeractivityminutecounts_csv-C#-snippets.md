
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessOrganizerActivityMinuteCounts = await graphClient.Reports.GetSkypeForBusinessOrganizerActivityMinuteCounts('D7')
	.Request()
	.GetAsync();

```