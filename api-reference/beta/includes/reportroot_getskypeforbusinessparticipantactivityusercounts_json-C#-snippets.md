
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessParticipantActivityUserCounts = await graphClient.Reports.GetSkypeForBusinessParticipantActivityUserCounts('D7')
	.Request()
	.GetAsync();

```