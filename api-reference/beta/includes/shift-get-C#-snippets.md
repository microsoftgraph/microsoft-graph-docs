
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var shifts = await graphClient.Teams["{teamId}"].Schedule.Shifts["{shiftId}"]
	.Request()
	.GetAsync();

```