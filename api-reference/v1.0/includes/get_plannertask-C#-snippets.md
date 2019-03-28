
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var tasks = await graphClient.Planner.Tasks["{task-id}"]
	.Request()
	.GetAsync();

```