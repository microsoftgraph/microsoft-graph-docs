
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Messages["{id}"]
	.createReplyAll();
	.Request()
	.PostAsync()

```