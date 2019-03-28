
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me
	.invalidateAllRefreshTokens();
	.Request()
	.PostAsync()

```