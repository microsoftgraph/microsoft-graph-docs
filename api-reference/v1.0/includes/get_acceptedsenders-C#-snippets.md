
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var acceptedSenders = await graphClient.Groups["{id}"].AcceptedSenders
	.Request()
	.GetAsync();

```