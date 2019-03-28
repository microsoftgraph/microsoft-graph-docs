
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessPeerToPeerActivityMinuteCounts = await graphClient.Reports.GetSkypeForBusinessPeerToPeerActivityMinuteCounts('D7')
	.Request()
	.GetAsync();

```