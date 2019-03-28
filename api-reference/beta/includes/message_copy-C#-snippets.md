
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var destinationId = "destinationId-value";

await graphClient.Me.Messages["{id}"]
	.copy(destinationId);
	.Request()
	.PostAsync()

```