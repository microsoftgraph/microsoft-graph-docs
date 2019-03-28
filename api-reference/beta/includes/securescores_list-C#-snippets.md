
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var secureScores = await graphClient.Security.SecureScores
	.Request()
	.Top(1)
	.GetAsync();

```