
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessParticipantActivityCounts = await graphClient.Reports.GetSkypeForBusinessParticipantActivityCounts('D7')
	.Request()
	.GetAsync();

```