
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create String list and populate it
var userIds = new List<String>();

//create instance of SchedulingGroup
var schedulingGroups = new SchedulingGroup
{
	DisplayName = "Cashiers",
	IsActive = true,
	UserIds = userIds,
};

await graphClient.Teams["{teamId}"].Schedule.SchedulingGroups
	.Request()
	.AddAsync(schedulingGroups);

```