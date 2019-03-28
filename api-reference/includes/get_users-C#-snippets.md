
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var users = await graphClient.Users["{user-id}"]
	.Request()
	.GetAsync();

```