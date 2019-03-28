
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var users = await graphClient.Education.Users["{user-id}"]
	.Request()
	.GetAsync();

```