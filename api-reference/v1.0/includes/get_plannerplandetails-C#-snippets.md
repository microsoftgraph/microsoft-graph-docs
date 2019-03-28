
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var details = await graphClient.Planner.Plans["{plan-id}"].Details
	.Request()
	.GetAsync();

```