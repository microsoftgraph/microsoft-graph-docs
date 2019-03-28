
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var bucketTaskBoardFormat = await graphClient.Planner.Tasks["{task-id}"].BucketTaskBoardFormat
	.Request()
	.GetAsync();

```