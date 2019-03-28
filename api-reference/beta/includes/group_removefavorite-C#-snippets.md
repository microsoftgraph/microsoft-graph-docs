
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Groups["{id}"]
	.removeFavorite();
	.Request()
	.PostAsync()

```