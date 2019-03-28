
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var destinationId = "deleteditems";

await graphClient.Me.Messages["AAMkADhAAATs28OAAA="]
	.move(destinationId);
	.Request()
	.PostAsync()

```