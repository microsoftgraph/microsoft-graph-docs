
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessParticipantActivityMinuteCounts = await graphClient.Reports.GetSkypeForBusinessParticipantActivityMinuteCounts('D7')
	.Request()
	.GetAsync();

```