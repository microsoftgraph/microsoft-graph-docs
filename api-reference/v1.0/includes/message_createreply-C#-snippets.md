
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Messages["{id}"]
	.createReply();
	.Request()
	.PostAsync()

```