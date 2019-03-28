
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var details = await graphClient.Planner.Tasks["{task-id}"].Details
	.Request()
	.GetAsync();

```