
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Messages["{id}"]
	.send();
	.Request()
	.PostAsync()

```