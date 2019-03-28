
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var timeOffReasons = await graphClient.Teams["{teamId}"].Schedule.TimeOffReasons["{timeOffReasonId}"]
	.Request()
	.GetAsync();

```