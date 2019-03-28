
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Groups["{id}"]
	.resetUnseenCount();
	.Request()
	.PostAsync()

```