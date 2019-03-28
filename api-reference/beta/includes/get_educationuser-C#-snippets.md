
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var users = await graphClient.Education.Users["13012"]
	.Request()
	.GetAsync();

```