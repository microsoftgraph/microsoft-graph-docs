
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.Me.Planner.All.Delta()
	.Request()
	.GetAsync();

```