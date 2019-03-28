
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Messages["{id}"]
	.unsubscribe();
	.Request()
	.PostAsync()

```