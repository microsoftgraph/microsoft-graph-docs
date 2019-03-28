
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Messages["{id}"]
	.createForward();
	.Request()
	.PostAsync()

```