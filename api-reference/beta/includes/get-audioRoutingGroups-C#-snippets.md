
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var audioRoutingGroups = await graphClient.App.Calls["{id}"].AudioRoutingGroups
	.Request()
	.GetAsync();

```