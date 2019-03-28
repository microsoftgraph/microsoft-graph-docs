
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Directory.DeletedItems["{object-id}"]
	.restore();
	.Request()
	.PostAsync()

```