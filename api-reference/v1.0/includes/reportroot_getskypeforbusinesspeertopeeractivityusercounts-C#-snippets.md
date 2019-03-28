
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessPeerToPeerActivityUserCounts = await graphClient.Reports.GetSkypeForBusinessPeerToPeerActivityUserCounts('D7')
	.Request()
	.GetAsync();

```