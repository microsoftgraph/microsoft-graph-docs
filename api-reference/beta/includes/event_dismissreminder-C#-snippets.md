
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Events["{id}"]
	.dismissReminder();
	.Request()
	.PostAsync()

```