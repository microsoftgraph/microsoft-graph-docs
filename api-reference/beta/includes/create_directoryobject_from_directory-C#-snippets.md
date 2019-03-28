
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Directory.DeletedItems["46cc6179-19d0-473e-97ad-6ff84347bbbb"]
	.restore();
	.Request()
	.PostAsync()

```