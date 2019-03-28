
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var notifyTeam = True;

var startDateTime = 10/8/2018 12:00:00 AM;

var endDateTime = 10/15/2018 12:00:00 AM;

await graphClient.Teams["{teamId}"].Schedule
	.share(notifyTeam,startDateTime,endDateTime);
	.Request()
	.PostAsync()

```