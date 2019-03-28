
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var recentPlans = await graphClient.Me.Planner.RecentPlans
	.Request()
	.GetAsync();

```