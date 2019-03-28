
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Groups["{id}"]
	.unsubscribeByMail();
	.Request()
	.PostAsync()

```