
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var groupSettings = await graphClient.GroupSettings
	.Request()
	.GetAsync();

```