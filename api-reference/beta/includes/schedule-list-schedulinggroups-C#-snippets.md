
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var schedulingGroups = await graphClient.Teams["{teamId}"].Schedule.SchedulingGroups
	.Request()
	.GetAsync();

```