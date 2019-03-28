
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var buckets = await graphClient.Planner.Buckets["{bucket-id}"]
	.Request()
	.GetAsync();

```