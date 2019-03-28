
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Groups["{id}"]
	.renew();
	.Request()
	.PostAsync()

```