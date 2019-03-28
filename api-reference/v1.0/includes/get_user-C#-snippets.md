
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var me = await graphClient.Me
	.Request()
	.GetAsync();

```