
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var details = await graphClient.Planner.Plans["xqQg5FS2LkCp935s-FIFm2QAFkHM"].Details
	.Request()
	.GetAsync();

```