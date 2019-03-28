
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var instances = await graphClient.Me.Events["{id}"].Instances
	.Request()
	.GetAsync();

```