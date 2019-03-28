
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var groups = await graphClient.Groups
	.Request()
	.GetAsync();

```