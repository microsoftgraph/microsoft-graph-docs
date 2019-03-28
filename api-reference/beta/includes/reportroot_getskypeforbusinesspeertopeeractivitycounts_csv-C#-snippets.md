
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getSkypeForBusinessPeerToPeerActivityCounts = await graphClient.Reports.GetSkypeForBusinessPeerToPeerActivityCounts('D7')
	.Request()
	.GetAsync();

```