
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var schedulingGroups = await graphClient.Teams["{teamId}"].Schedule.SchedulingGroups["{schedulingGroupId}"]
	.Request()
	.GetAsync();

```