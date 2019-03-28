
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var Comment = "Cancelling for this week due to all hands";

await graphClient.Me.Events["{id}"]
	.cancel(comment);
	.Request()
	.PostAsync()

```