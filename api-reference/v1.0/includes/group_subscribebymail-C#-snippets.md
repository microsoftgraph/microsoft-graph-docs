
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Groups["{id}"]
	.subscribeByMail();
	.Request()
	.PostAsync()

```