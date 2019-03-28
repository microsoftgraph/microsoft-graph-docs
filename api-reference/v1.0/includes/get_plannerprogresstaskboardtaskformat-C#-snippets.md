
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var progressTaskBoardFormat = await graphClient.Planner.Tasks["{task-id}"].ProgressTaskBoardFormat
	.Request()
	.GetAsync();

```