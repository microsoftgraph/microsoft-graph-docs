
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var groupSettings = await graphClient.GroupSettings["{id}"]
	.Request()
	.GetAsync();

```