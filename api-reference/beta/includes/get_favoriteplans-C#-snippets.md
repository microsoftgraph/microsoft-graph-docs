
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var favoritePlans = await graphClient.Me.Planner.FavoritePlans
	.Request()
	.GetAsync();

```