
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var plans = await graphClient.Planner.Plans["{plan-id}"]
	.Request()
	.GetAsync();

```