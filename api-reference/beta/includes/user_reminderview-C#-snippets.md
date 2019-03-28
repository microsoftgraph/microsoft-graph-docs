
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var reminderView = await graphClient.Me.ReminderView('2017-06-05T10:00:00.0000000','2017-06-11T11:00:00.0000000')
	.Request()
	.GetAsync();

```