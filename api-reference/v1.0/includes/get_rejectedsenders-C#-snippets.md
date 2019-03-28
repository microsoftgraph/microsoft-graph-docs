
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var rejectedSenders = await graphClient.Groups["{id}"].RejectedSenders
	.Request()
	.GetAsync();

```